
class Bakery
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


chocolate_chip = BakedGoods.new('cookies', 'Chocolate Chip', 'img', 'Chocolate chips with whole wheat, honey and brown sugar.', '$11.50/half dozen')
oatmeal_cookie = BakedGoods.new('cookies', 'Oatmeal Cookie', 'img', 'Healthy and delicious cookies made with honey and organic oatmeal.', '$10.50/half dozen')
blueberry_muffin = BakedGoods.new('muffins', 'Blueberry Muffin', 'img', 'Made from fresh blueberries.', '$4.50/each')
birthday_cake = BakedGoods.new('cake', 'Birthday Cake', 'img', 'Made to order, per your design.', '$47.00/each')
baguette = BakedGoods.new('bread', 'French Baguette', 'img', 'Crusty French Baguette, freshly baked daily.', '$5.50/each')
whole_wheat_rolls = BakedGoods.new('bread', 'Whole Wheat Rolls', 'img', 'Light and fluffy rolls, made with 100% whole wheat.', '$3.00/2 rolls')
cupcakes = BakedGoods.new('cake', 'Cupcakes', 'img', 'Assorted cupcakes.', '$5.50/each')

nenz_bakery = Bakery.new()
nenz_bakery.addItems(chocolate_chip)
nenz_bakery.addItems(oatmeal_cookie)
nenz_bakery.addItems(blueberry_muffin)
nenz_bakery.addItems(birthday_cake)
nenz_bakery.addItems(baguette)
nenz_bakery.addItems(whole_wheat_rolls)
nenz_bakery.addItems(cupcakes)