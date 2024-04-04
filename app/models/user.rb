class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :seatings

  with_options presence: true do
    validates :groom
    validates :bride
    validates :password, length: { minimum: 6 }
  end
end
