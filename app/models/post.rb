class Post < ActiveRecord::Base
  attr_accessible :description, :location, :user_id, :address, :city, :state, :zip, :latitude, :longitude, :picture, :endtime
  belongs_to :user
  has_attached_file :picture, :styles => { :medium => "300x300>",:cropped => "300x300#", :thumb => "100x100>" }, :default_url => "default.jpg"
end
