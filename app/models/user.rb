class User < ApplicationRecord

  validates :first_name,  presence: true, length: { maximum: 50 }
  validates :last_name,  presence: true, length: { maximum: 50 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
