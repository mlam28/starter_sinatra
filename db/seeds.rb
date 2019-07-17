Item.destroy_all
User.destroy_all
OrderItem.destroy_all
OrderUser.destroy_all

Item.create(name: "Spaghetti", price: 10.00)
Item.create(name: "Omelet", price: 8.50)
Item.create(name: "Fried Rice", price: 9.00)
Item.create(name: "Mixed Fruit", price: 8.75)
Item.create(name: "Pancakes", price: 10.00)
Item.create(name: "Steak", price: 16.50)


michelle = User.create(name: "Michelle", birthday: 1996/01/30, favorite_food: "cookies")
User.create(name: "Ashley", favorite_food: "eggs")

order1 = OrderItem.create(item_id: [1, 2, 3])
michelleorder1 = OrderUser.create(order_items_id: 1, user_id: 1)