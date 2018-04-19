
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
    attr_accessor :type, :name, :image, :description, :price

    def initialize (type, name, image, description, price)
        @type = type
        @name = name
        @image = image
        @description = description
        @price = price
    end
end

    

class Mailing_list
    def initialize(customer_name, customer_email)
        @customer_name = customer_name
        @customer_email = customer_email
        this.mailing_list =[:customer_name][:customer_email]
        puts "Join our mailing list"
        puts "Never miss our specials and updates!"
    end  
end

red_velvet = BakedGoods.new('cake', 'Red Velvet Cake', 'images/cake/redvelvet.jpg', 'Made to order.', '$49.00/each')
linzer_tart = BakedGoods.new('cookies', 'Linzer Tarts', 'images/cookies/sweet.jpg', 'Traditional jam-filled tarts.', '$14.50/half dozen')
oatmeal_muffin = BakedGoods.new('muffins', 'Oatmeal Muffins', 'images/muffins/oat.jpg', 'Healthy whole wheat, honey and brown sugar muffin.', '$4.50/each')
sesame_bread = BakedGoods.new('bread', 'Sesame Seed Bread', 'images/bread/sesame.jpg', 'Crusty, freshly baked sesame bread.', '$7.50/loaf')
raspberry_chocolate = BakedGoods.new('cake', 'Raspberry Chocolate Cake', 'images/cake/sweet.jpg', 'Tryly decadent cake with layers of dark chocolate filling.', '$52.00 each')
assorted_bread = BakedGoods.new('bread', 'Assorted Bread', 'images/bread/bread4.jpg', 'Freshly baked loaves. Choose from a large assortment which includes fruit and nuts, grains, whole wheat.', '$7.50/loaf')
chocolate_muffin = BakedGoods.new('muffins', 'Chocolate Muffin', 'images/muffins/choco.jpg', 'Rich and fulfilling chocolate muffin with chocolate chip morsels.', '$4.50/each')
vanilla_muffins =  BakedGoods.new('muffins', 'Cream Vanilla Muffin', 'images/muffins/cream.jpg', 'Addictive muffins with cream and vanilla beans.', '$4.50/each')
cranberry_muffin = BakedGoods.new('muffins', 'Cranberry Muffin', 'images/muffin/cranberry.jpg', 'Sure to be your new favorite.', '$4.50/each')
chocolate_cupcake = BakedGoods.new('cake', 'Chocolate Cupcake', 'images/cake/cupcake2.jpg', 'Light and moist, baked fresh daily.', '$4.50/each')
green_tea = BakedGoods.new('cookies', 'Green Tea Cookies', 'images/cookies/green.jpg', 'Perfect with a cup of your favorite beverage.', '$8.50/half dozen')
macrons = BakedGoods.new('cookies', 'Macrons', 'images/cookie/macron.jpg', 'Jewelled macrons of rainbow colors.', '$10.50/half dozen')
baguette = BakedGoods.new('bread', 'French Baguette', 'images/cake/sweet.jpg', 'Crusty French Baguette, freshly baked daily.', '$6.50/each')
whole_wheat_rolls = BakedGoods.new('bread', 'Whole Wheat Rolls', 'images/cake/sweet.jpg', 'Light and fluffy rolls, made with 100% whole wheat.', '$3.00/2 rolls')
cupcakes = BakedGoods.new('cake', 'Cupcakes', 'images/cake/sweet.jpg', 'Assorted cupcakes.', '$5.50/each')

$nenz_bakery = Bakery.new()
$nenz_bakery.addItems(chocolate_chip)
$nenz_bakery.addItems(oatmeal_cookie)
$nenz_bakery.addItems(blueberry_muffin)
$nenz_bakery.addItems(birthday_cake)
$nenz_bakery.addItems(baguette)
$nenz_bakery.addItems(whole_wheat_rolls)
$nenz_bakery.addItems(cupcakes)