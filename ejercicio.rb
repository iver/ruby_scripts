### 1 ####
class Product

  def initialize(*args)
    @name = args[0]
    @price = args[1]
  end
  def name
    return @name
  end

end

class Cart
  def initialize
    @products ||= Array.new
  end

  def add(*args)
    quantity = args[1].nil? ? 1 : args[1]

    quantity.times do
      @products.push args
    end
  end

end

# Inventario ##
 iPod = Product.new('iPod', 229.00)
 iMac = Product.new('iMac', 1199.00)
 iPhone = Product.new('iPhone', 49.00)

#  puts iPod.inspect
#  puts iMac.inspect
#  puts iPhone.inspect

#### 2 ####
## Agregar productos al carrito ##

cart = Cart.new()
second_cart = Cart.new()

cart.add(iMac)
cart.add(iPhone)
cart.add(iPod, 2)

 second_cart.add(iMac,2)
 second_cart.add(iPod)
 second_cart.add(iPod)
 second_cart.add(iPhone,5)

puts cart.inspect
puts second_cart.inspect