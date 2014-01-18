### 1 ####
class Product
  attr_reader :name, :price
  attr_accessor :quantity
  
  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Cart
  attr_accessor :items
  
  def initialize
    @items ||= Array.new
  end

  def add(product, quantity = nil)
    @items = [] unless @items
    product.quantity = quantity.nil? ? 1 : quantity
    unless @items.include?(product) 
    	@items.to_a.push product
    else
    	@items.each do |item|
    		item.quantity += product.quantity if item.name == product.name  
    	end
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

# puts cart.inspect
# puts second_cart.inspect

# #### 3 ####
# # Detalle de la compra ##

cart.items.each do |item|
  puts "#{item.name} - #{item.quantity} - #{item.price} US$"
end
