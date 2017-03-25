class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :user_profile
  has_many :skills
  has_many :bookings #bookings I sent
  has_many :requests, through: :skills, source: :bookings #bookings I received
  has_many :reviews_received, through: :skills, source: :reviews
  has_many :reviews_sent, source: :reviews

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
