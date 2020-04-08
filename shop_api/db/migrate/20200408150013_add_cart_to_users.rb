class AddCartToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :cart, :string
  end
end
