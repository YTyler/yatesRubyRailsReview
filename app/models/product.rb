class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :cost, presence: true
  validates :origin, presence: true

before_save(:format_input)

private
  def format_input
    self.name = self.name.downcase
    self.name = self.name.titleize

    self.country_of_origin = self.country_of_origin.downcase
    self.country_of_origin = self.country_of_origin.titleize

  end
end
