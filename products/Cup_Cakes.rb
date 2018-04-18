require_relative './Baked_Goods.rb'

class CupCake < BakedGood
    # how to access this class variable from outside the class?
    def initialize(title, photo, price, description)
        super("cupcake", title, photo, price, description)
        # store the instance in the class variable @@all
        @@all.push(self)
    end
    # how can I get this to work with this variable and method in the super class instead?
    @@all = []
    def self.all
        # p @@all
        @@all
    end
end

baby_cup_cakes = CupCake.new('photo', 'baby cake', 'price', 'a lovely baby cake')
purple_cup_cakes = CupCake.new('photo', 'purple cake', 'price', 'a lovely purple cupcake')
$all_cupcakes = CupCake.all
