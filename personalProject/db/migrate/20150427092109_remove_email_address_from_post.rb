class RemoveEmailAddressFromPost < ActiveRecord::Migration
  def change
  	remove_column :posts, :emailaddress
  end
end
