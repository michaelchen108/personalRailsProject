class PostsController < ApplicationController
  load_and_authorize_resource 
  
  def index
    if (current_user && params[:tag])
      @posts = Post.near(current_user.address).tagged_with(params[:tag]).order("created_at DESC")
    elsif (current_user)
      @posts = Post.near(current_user.address).order("created_at DESC")
    elsif params[:tag]
      @posts = Post.all.tagged_with(params[:tag]).order("created_at DESC")
    else
      @posts = Post.all.order("created_at DESC")
    end            
  end

  def tag_cloud
    @tags = Post.tag_counts_on(:tags)
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end

  def new 
    @post = current_user.posts.build
  end

  def create 
    @post = current_user.posts.build(post_params)
    @post.address = current_user.address
    @post.geocode
    
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :image, :tag_list)
  end

end
