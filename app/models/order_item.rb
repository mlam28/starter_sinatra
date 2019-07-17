class OrderItem < ActiveRecord::Base
    has_many :items
    belongs_to :order_user
    has_one :user, through: :order_user
end