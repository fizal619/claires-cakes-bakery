require_relative './Baked_Goods.rb'
# are classes considered to be global variables?
class Cake < BakedGood
    attr_accessor :category, :title, :photo, :price, :description
    # how to access this class variable from outside the class?
    def initialize(title, photo, price, description)
        super("cakes", title, photo, price, description)
        # store the instance in the class variable @@all
        @@all.push(self)
    end
    
    def to_json
        {
            title: @title,
            etc...
        }.to_json()
    end
    
    # how can I get this to work with this variable and method in the super class instead?
    @@all = []
    def self.all
        # p @@all
        @@all
    end

end

birthday_cakes = Cake.new('photo', 'birthday cake', 'price', 'a lovely birthday cake')
purple_cakes = Cake.new('photo', 'purple cake', 'price', 'a lovely purple cake')
$all_cakes = Cake.all
