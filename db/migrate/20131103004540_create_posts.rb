class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.integer :user_id
    	t.text :description
    	t.float :latitude
    	t.float :longitude
    	t.string :location
    	t.timestamps
    end
  end
end
