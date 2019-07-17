class UsersController < Sinatra::Base
    set :views, "app/views/users"
    set :method_override, true
end