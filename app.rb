require 'sinatra'
require_relative 'products/Muffins.rb'

# set :bind, "0.0.0.0" # configures sinatra to accept requests from other domains

# see if the files are loaded:
# p Baked_Goods_Class
get "/" do
    "<p>root route</p>"
    # erb views:index
end

get "/muffins/:which" do
    "<p>sending all the muffins</p>"
end

get "/cookies/:which" do
    "<p>sending all the cookies</p>"
end

get "/cakes/:which" do
    "<p>sending all the cakes</p>"
end

# route to send all products via an email
