class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.integer :price
      t.string :address
      t.integer :mortgage
      t.integer :sqft
      t.integer :year
      t.integer :lot
      t.integer :monthly
      t.integer :bedrooms
      t.integer :bathrooms
      t.string :extras
      t.boolean :pool

      t.timestamps
    end
  end
end
