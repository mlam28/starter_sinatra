class User < ActiveRecord::Base
    has_many :order_users
    has_many :order_items, through: :order_users
    has_many :items, through: :order_items
end