Item.destroy_all
OrderItem.destroy_all
Order.destroy_all

Item.create(name: "Spaghetti", price: 10.00)
Item.create(name: "Omelet", price: 8.50)
Item.create(name: "Fried Rice", price: 9.00)
Item.create(name: "Mixed Fruit", price: 8.75)
Item.create(name: "Pancakes", price: 10.00)
Item.create(name: "Steak", price: 16.50)


Order.create(name: "Michelle's order")
OrderItem.create(order_id: 1, item_id: 1)
OrderItem.create(order_id: 1, item_id: 2)
OrderItem.create(order_id: 1, item_id: 3)

Order.create(name: "Ashley's Order")
OrderItem.create(order_id: 2, item_id: 3)
OrderItem.create(order_id: 2, item_id: 4)
OrderItem.create(order_id: 2, item_id: 1)