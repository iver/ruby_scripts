### 1 ####
class Product
  attr_accessor :name, :price
  
  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Cart
#  @products = []
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

# #### 3 ####
# # Detalle de la compra ##

# cart.items.each do |item|
#   puts "#{item.name} - #{item.quantity} - #{item.price} US$"
# end
#
# #### 4 ####
# # Calcular el total del carrito ##
# puts "Los productos de tu carrito valen: #{cart.price}"
#
# #### 5 ####
# ## Descuentos: iPods 2 x 1, iMac => (iPhone - 20%) ##
# puts "Tu compra aplica un descuento de: #{cart.discount}."
# puts "El total de tu compra es de #{cart.total}."
#
# ### 6 ###
# puts "Agrega al inventario todos los productos de la familia mac con sus precios actuales de apple.com"
# puts "Puedes traer la informacion de http://store.apple.com/"

