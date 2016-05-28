class Car < ActiveRecord::Base
  attr_accessible :description, :title

  has_many :comments
  has_many :bookings
  has_many :users, :through => :comments
  has_many :users, :through => :bookings

  validates :make, :presence => true
  validates :car_id, :presence => true
  validates :model, :presence => true
  validates :title, :presence => true



  def has_current_booking?
    bookings.where("start_date <= ?", Time.now.to_date).where("end_date >= ?", Time.now.to_date).any?
  end
end
