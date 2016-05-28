class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :car
  attr_accessible :destination, :start_date, :end_date, :car_id, :user_id

  validates :car_id, :presence => true
  validates :user_id, :presence => true
  validates :destination, :presence => true
  validates :start_date, :presence => true
  validates :end_date, :presence => true

  validate :car_not_already_booked

end
  private

   def car_not_already_booked


   if self.car.has_current_booking?
    errors.add(:car_id, "Car currently booked") 
   end 

end
