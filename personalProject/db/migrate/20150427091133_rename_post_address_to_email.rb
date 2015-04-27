class RenamePostAddressToEmail < ActiveRecord::Migration
  def change
  	rename_column :posts, :address, :emailaddress
  end
end
