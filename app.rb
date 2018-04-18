require 'sinatra'
require 'json'
# require 'sengrid-ruby'
# include SenGrid
require_relative './products/Products.rb'


p $all_products

get "/" do
    # "<p>root route</p>"
    # automatically looks in the views folder:
   erb :index
end

get "/test" do

    
    # "<p>test route</p>"
    content_type :json
    # { :key1 => 'value1', :key2 => 'value2' }.to_json
    $all_products.to_json
end

get "/email" do 
    "<p>route to send all products via an email</p>"

end

# product == cake, cupcake, muffin
# name == all, or name of specific item 
get "/:product/:name" do
    # how to access symbols with strings?
    @products = $products[params[:product]]
   p @products
    erb :products
end



