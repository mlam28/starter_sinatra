class OrdersController < Sinatra::Base
    set :views, "app/views/orders"
    set :method_override, true

    get '/orders/new' do
        @items = Item.all
        erb :new
    end

    get '/orders/thankyou' do
        erb :thank_you
    end

    get '/orders/:id' do
        @order = Order.find(params[:id])
        erb :show
    end

    get '/orders/:id/edit' do
        @order = Order.find(params[:id])
        @items = Item.all
        erb :edit
    end

    patch '/orders/:id' do
        @order = Order.find(params[:id])
        name = params[:name]
        item_ids = params[:items] #["1", "2"]
        @order.update(name: name)
        order_items = OrderItem.where(order_id: @order.id)
        order_items.each do |order_item|
            order_item.delete
        end
        item_ids.each do |id|
        OrderItem.create(order_id: @order.id, item_id: id.to_i)
        end
        redirect "orders/#{@order.id}"
    end

    post '/orders' do
        order = Order.create(name: params[:name])
        item_ids = params[:items]
        item_ids.each do |item|
            OrderItem.create(order_id: order.id, item_id: item.to_i)
        end
        redirect "/orders/#{order.id}"
    end
    
    delete '/orders/:id' do
        @order = Order.find(params[:id])
        @order.destroy
        redirect "/"
    end

    
end