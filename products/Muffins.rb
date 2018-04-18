require_relative './Baked_Goods.rb'
# see if the files are loaded:

class Muffin < BakedGood
  # how to access this class variable from outside the class?
  def initialize(title, photo, price, description)
    super('muffin', title, photo, price, description)
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

baby_muffins = Muffin.new('photo', 'baby cake', 'price', 'a lovely baby muffin')
purple_muffins = Muffin.new('photo', 'purple cake', 'price', 'a lovely purple muffin')
$all_muffins = Muffin.all
