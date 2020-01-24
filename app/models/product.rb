class Product < ApplicationRecord
  # Relations
  has_many :reviews, dependent: :destroy
  # Validations
  validates :name, presence: true
  validates :cost, presence: true
  validates :country_of_origin, presence: true

  # Scopes
  scope :most_reviews, -> {}
  scope :three_recent, -> { order(created_at: :desc).limit(3) }
  scope :usa_made, -> { where}
  # Callbacks
  before_save(:format_input)

  private
  def format_input
    self.name = self.name.downcase
    self.name = self.name.titleize

    self.country_of_origin = self.country_of_origin.downcase
    self.country_of_origin = self.country_of_origin.titleize

  end
end
