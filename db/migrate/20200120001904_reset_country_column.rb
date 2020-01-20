class ResetCountryColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column(:products, :country)
    add_column(:products, :country_of_origin, :string)
  end
end
