class CommentsController < ApplicationController



  private

  def post_params
    params.require(:post).permit(:content)
  end
end