class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :cost, presence: true
  validates :origin, presence: true 
end
