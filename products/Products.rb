
# why won't these require
# why is it giving me error for BakedGoods class?
require_relative './Cakes.rb'
require_relative './Cup_Cakes.rb'
require_relative './Muffins.rb'
# load 'Cakes.rb'
# load 'Cup_Cakes.rb'
# load 'Muffins.rb'

# how to have this on the BakedGood super class?
$all_products = {
    cake: $all_cakes,
    cupcake: $all_cupcakes,
    muffin: $all_muffins
 }
p $all_products
