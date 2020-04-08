class CreateShopitems < ActiveRecord::Migration[6.0]
  def change
    create_table :shopitems do |t|
      t.string :name
      t.string :image
      t.integer :price
      t.integer :stock
      t.string :description

      t.timestamps
    end
  end
end
