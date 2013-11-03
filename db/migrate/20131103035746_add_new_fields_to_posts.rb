class AddNewFieldsToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :address, :text
  	add_column :posts, :city, :string
  	add_column :posts, :state, :string
  	add_column :posts, :zip, :string
  	add_column :posts, :endtime, :datetime
  end
end
