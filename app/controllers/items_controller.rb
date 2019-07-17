class ItemsController < Sinatra::Base
    set :views, "app/views/items"
    set :method_override, true

    get '/menu' do
        @items = Item.all
        erb :menu
    end

end