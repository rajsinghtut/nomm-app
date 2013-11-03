class Post < ActiveRecord::Base
  attr_accessible :description, :location, :user_id
  belongs_to :user
end
