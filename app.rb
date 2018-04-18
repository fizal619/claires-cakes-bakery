require 'sinatra'
# had to just require individual products b/c Products.rb hub not working
require_relative 'products/Cakes.rb'
require_relative 'products/Cup_Cakes.rb'
require_relative 'products/Muffins.rb'

# figure out how to put this on the super class automatically
# and how to export it via the Products.rb
$products = {
    "muffin" => Muffin.all,
    "cake" =>  Cake.all,
    "cupcake" =>  CupCake.all,
}
p $products
# set :bind, "0.0.0.0" # configures sinatra to accept requests from other domains

# see if the files are loaded:
# p Baked_Goods_Class
get "/" do
    # "<p>root route</p>"
    # automatically looks in the views folder:
   erb :index
end

# product == cake, cupcake, muffin

# name == all, or name of specific item 
get "/:product/:name" do
    # how to access symbols with strings?
    @products = $products[params[:product]]
   p @products
    erb :products
end

get "/email" do 
    "<p>route to send all products via an email</p>"
end

