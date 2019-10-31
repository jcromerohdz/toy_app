class User < ApplicationRecord
  has_many :microposts
  validates :name, length: { maximum: 40 } , presence: true
  validates :email, length: { maximum: 45 }, presence: true
end
