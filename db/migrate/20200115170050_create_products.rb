class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string(:name)
      t.string(:category)
      t.integer(:rank)
      t.string(:instructions)

      t.timestamps
    end
  end
end
