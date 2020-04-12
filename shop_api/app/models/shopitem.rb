class Shopitem < ApplicationRecord
  belongs_to :user
   has_many :order_items
   has_many :products, through: :Shopitem_items
end
