### 1 ####
class Product
  attr_reader :name, :price, :quantity

  def initialize( name, price, quantity=0 )
    @name = name
    @price = price
    @quantity = quantity
  end

  def update_quantity( quantity )
    @quantity += quantity unless quantity.nil?
  end
end

class ProductCollection < Array

  def get_product( product )
    finded = self.find { |item| item.name == product.name }
    finded = Product.new( product.name, product.price, product.quantity ) if finded.nil?
    return finded
  end
end

class Cart
  attr_accessor :items

  def initialize
    @items ||= ProductCollection.new
  end

  def add(product, quantity = 1)
    @items = [] unless @items

    new_product = @items.get_product product
    new_product.update_quantity quantity unless new_product.nil?
    @items.push new_product

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
