require 'sinatra'
require 'json'
# require 'sengrid-ruby'
# include SenGrid
require_relative './products/Products.rb'


# note: this is an object containing objects of all my bakery products.  It is commented-out, in order to practice on dummy data:
# p $all_products


# note: this is my dummy data, to convert to JSON  (At the least, I need to be able to send an array of objects and parse those browsers on the client-side)
data = [
$sample_data = {
    name: "blue doughnut",
    title: "blue doughnut title",
    price: 1
},
$sample_data_two = {
    name: "blue doughnut",
    title: "blue doughnut title",
    price: 1
},
$sample_data_three = {
    name: "blue doughnut",
    title: "blue doughnut title",
    price: 1
}
]
$jsonified = [];
data.each do |item|
    item = item.to_json
    $jsonified.push(item)
end

$jsonified = $jsonified.to_json


get "/" do
    # "<p>root route</p>"
    # automatically looks in the views folder:
   erb :index
end

get "/test" do

    # note:  this route is being requested by my Ajax Promise on the page:  public/scripts/main.js
    # "<p>test route</p>"
    content_type :json
    # { :key1 => 'value1', :key2 => 'value2' }.to_json
    #  $all_products.to_json
    #  $all_products = JSON.recurse_proc($all_products)

    # $all_products = JSON.load(str, nil, create_additions: true)

    # $all_products
    # $sample_data.to_json
    p "$jsonified:  #{$jsonified}"
    $jsonified
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



