class UndoComments < ActiveRecord::Migration
  def change
  	drop_table :comments
  	remove_column :users, :my_draft_comments_count
  	remove_column :users, :my_published_comments_count
  	remove_column :users, :my_comments_count
  	remove_column :users, :draft_comcoms_count
  	remove_column :users, :published_comcoms_count
  	remove_column :users, :deleted_comcoms_count
  	remove_column :users, :spam_comcoms_count

	remove_column :posts, :draft_comments_count
  	remove_column :posts, :published_comments_count
  	remove_column :posts, :deleted_comments_count
  end
end
