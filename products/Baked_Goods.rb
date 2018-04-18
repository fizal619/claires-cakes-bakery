
class BakedGood
    # How to put a variable here that all of the baked goods can push to?
    # @@all_baked_goods
    attr_accessor :category, :title, :photo, :price, :description
    def initialize(category, title, photo, price, description)
        @category = category
        @title = title
        @photo = photo
        @price = price
        @description = description
    end
end



