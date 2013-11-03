class Post < ActiveRecord::Base
  attr_accessible :description, :location, :user_id, :address, :city, :state, :zip, :latitude, :longitude
  belongs_to :user
end
