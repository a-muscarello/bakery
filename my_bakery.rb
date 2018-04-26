
class Bakery
    attr_accessor :cookies, :muffins, :cake, :bread
    def initialize
        @cookies = []
        @muffins = []
        @cake = []
        @bread = []
    end

    def addItems(item)
        if item.type == "cake"
            @cake.push(item)
        elsif item.type == "cookies"
            @cookies.push(item)
        elsif item.type == "muffins"
            @muffins.push(item)
        elsif item.type == "bread"
            @bread.push(item)
        end
    end
end


class BakedGoods
    attr_accessor :type, :name, :image, :price

    def initialize (type, name, image, price)
        @type = type
        @name = name
        @image = image
        @price = price
    end
end

    

red_velvet = BakedGoods.new('cake', 'Red Velvet Cake', 'images/cake/redvelvet.jpg', '$49.00/each')
linzer_tart = BakedGoods.new('cookies', 'Linzer Tarts', 'images/cookies/linzer.jpg', '$14.50/half dozen')
oatmeal_muffin = BakedGoods.new('muffins', 'Oatmeal Muffins', 'images/muffins/oat.jpg', '$4.50/each')
sesame_bread = BakedGoods.new('bread', 'Sesame Seed Bread', 'images/bread/sesame.jpg', '$7.50/loaf')
raspberry_chocolate = BakedGoods.new('cake', 'Raspberry Chocolate Cake', 'images/cake/sweet.jpg', '$52.00 each')
assorted_bread = BakedGoods.new('bread', 'Assorted Bread', 'images/bread/bread4.jpg', '$7.50/loaf')
chocolate_muffin = BakedGoods.new('muffins', 'Chocolate Muffin', 'images/muffins/choco.jpg', '$4.50/each')
vanilla_muffin =  BakedGoods.new('muffins', 'Cream Vanilla Muffin', 'images/muffins/cream.jpg', '$4.50/each')
cranberry_muffin = BakedGoods.new('muffins', 'Cranberry Muffin', 'images/muffins/cranberry.jpg', '$4.50/each')
chocolate_cupcake = BakedGoods.new('cake', 'Chocolate Cupcake', 'images/cake/cupcake2.jpg', '$4.50/each')
cupcake = BakedGoods.new('cake', 'Cupcake', 'images/cake/cupcake.jpg', '$4.50/each')
green_tea = BakedGoods.new('cookies', 'Green Tea Cookies', 'images/cookies/green.jpg', '$8.50/half dozen')
macrons = BakedGoods.new('cookies', 'Macrons', 'images/cookies/macrons.jpg', '$10.50/half dozen')
baguette = BakedGoods.new('bread', 'French Baguette', 'images/bread/french.jpg', '$4.50/each')
whole_wheat_rolls = BakedGoods.new('bread', 'Whole Wheat Rolls', 'images/bread/rolls2.jpg', '$3.00/2 rolls')
vanilla_cupcakes = BakedGoods.new('cake', 'Cupcakes', 'images/bakery/cupcake3.jpg', '$5.50/each')

$friendly_bakery = Bakery.new()
$friendly_bakery.addItems(red_velvet)
$friendly_bakery.addItems(linzer_tart)
$friendly_bakery.addItems(oatmeal_muffin)
$friendly_bakery.addItems(sesame_bread)
$friendly_bakery.addItems(raspberry_chocolate)
$friendly_bakery.addItems(assorted_bread)
$friendly_bakery.addItems(chocolate_muffin)
$friendly_bakery.addItems(vanilla_muffin)
$friendly_bakery.addItems(cranberry_muffin)
$friendly_bakery.addItems(chocolate_cupcake)
$friendly_bakery.addItems(cupcake)
$friendly_bakery.addItems(green_tea)
$friendly_bakery.addItems(macrons)
$friendly_bakery.addItems(baguette)
$friendly_bakery.addItems(whole_wheat_rolls)
$friendly_bakery.addItems(vanilla_cupcakes)

