class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :seatings

  validates :groom, presence: true
  validates :bride, presence: true
  validates :password, length: { minimum: 6 }
end
