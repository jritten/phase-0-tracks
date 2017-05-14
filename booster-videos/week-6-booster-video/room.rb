# ROOM CLASS
# Attributes:
# - name
# - width
# - length
# - items (a collection of Item instances)
# Methods:
# - getters for items, name, width, length
# - setter for items, name
# - total_value (adds up prices of items)
# - to_s override
# - require item class to access data
# - use driver code to make sure module works
# - # => uninitialized constant (NameError)
# - this means we need to require our files

require_relative "item"

class Room
	attr_reader :width, :length
	attr_accessor :name, :items

	def initialize(name, width, length)
		@name = name
		@width = width
		@length = length
		@items = []
	end

	def total_value
		total = 0
		@items.each do |item|
			total += item.price
		end
		total
	end

	def to_s
		"#{@name} (#{@width} x #{@length})"
	end
end

# DRIVER CODE

# living_room = Room.new("Living Room", 20, 35)
# puts living_room
# => uninitialized constant Item (NameError)
# piano = Item.new("piano", "black", 10000)
# box = Item.new("box", "brown", 0)
# living_room.items << piano
# living_room.items << box
# puts living_room.total_value
