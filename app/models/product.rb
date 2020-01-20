class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :cost, presence: true
  validates :country, presence: true

before_save(:format_input)

private
  def format_input
    self.name = self.name.downcase
    self.name = self.name.titleize

    self.country = self.country.downcase
    self.country = self.country.titleize

  end
end
