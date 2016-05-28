class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :first_name, :last_name, :username, :address, :phone_number, :license_number

  has_many :comments
  has_many :bookings
  has_many :users, :through => :comments
  has_many :users, :through => :bookings

  validates :license_number, :presence => true
  validates :user_id, :presence => true
  validates :username, :presence => true
  validates :address, :presence => true

end
