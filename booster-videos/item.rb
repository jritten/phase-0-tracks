# ITEM CLASS
# Attributes:
# - name
# - color
# - price
# Methods:
# - getters for color, price, name
# - to_s override
# - 'p' is used for debugging
# - 'puts' calls '.to_s' on an item
 #- use driver code to make sure module works

class Item
	attr_reader :name, :color, :price

	def initialize(name, color, price)
		@name = name
		@color = color
		@price = price
	end

	def to_s #OVERRIDE
		"A #{@color} #{@name} that cost #{@price} cents"
	end
end

# DRIVER CODE 

# item = Item.new("box", "brown", 0)
# puts item => #<Item:0x007fbab116be58>
# p item => #<Item:0x007fbab116be58 @name="box", @color="brown", @price=0>
# puts item

# item2 = Item.new("piano", "black", 10000)
# puts item2