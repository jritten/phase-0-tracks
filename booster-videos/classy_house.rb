# Week 6 Booster Video
# A Classy House

# Build a house out of classes
# Each class gets its own file

# HOUSE CLASS
# Attributes:
# - rooms (a collection of Room instances)
# Methods:
# - getter for rooms
# - add_room (only allows up to 10 rooms) USE A SETTER, NOT A GETTER
# - square_footage (adds up the house's square footage and
# returns it as an integer)
# - total_value (adds up value of items in all rooms)
# - to_s override
# - Build Backwards
# - pass a 'room instance' into the method
# - # => uninitialized constant (NameError)
# - this means we need to require our files

require_relative "room"
require_relative "item"

class House
	attr_reader :rooms

	def initialize
		@rooms = []
	end

	def add_room(room)
		if @rooms.length < 11
			@rooms << room
			true
		else
			false
		end
	end

	def total_value
	# you can refactor using the INJECT method
		value = 0
		@rooms.each do |room|
			value += room.total_value
		end
		value 
	end

	def square_footage
		sq_footage = 0
		@rooms.each do |room|
			sq_footage += (room.length * room.width)
		end
		sq_footage 
	end

	def to_s
		house_str = ""
		@rooms.each do |room|
			house_str << room.to_s.upcase
			house_str << "\n\n"
			room.items.each do |item|
				house_str << items.to_s
				house_str << "\n"
			end
			house_str << "\n"
		end
		house_str
	end
end



# DRIVER CODE

# Make House
house = House.new

# Make Living Room
living_room = Room.new("Living Room", 20, 35)
puts living_room
piano = Item.new("piano", "black", 10000)
box = Item.new("box", "brown", 0)
living_room.items << piano
living_room.items << box
puts living_room.total_value

# Make Kitchen
kitchen = Room.new("Kitchen", 10, 15)
sink = Item.new("sink", "white", 5000)
oven = Item.new("oven", "white", 3000)
kitchen.items << sink
kitchen.items << oven

# Add to House
house.add_room(living_room)
house.add_room(kitchen)

puts house
# => uninitialized constant Room (NameError)
puts house.total_value
puts.house.square_footage


