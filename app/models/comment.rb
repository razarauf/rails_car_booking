class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :car
  attr_accessible :body, :rating, :user_id, :car_id

  validates :car_id, :presence => true
  validates :user_id, :presence => true


 end
