# Week 7 Ruby Assessment Extra Challenge

#require_relative "nuts"

class Squirrel
	attr_reader :color
	attr_accessor :location, :hoard_locations

	def initialize(color, location)
		@color = color
		@location = location
		@hibernate = true
		@hoard_locations = {}
	end 

	def wake_up
		@hibernate = false
		"the squirrel woke up"
	end

	def sleep
		@hibernate = true
		"the squirrel fell asleep"
	end

	def store_food(hoard_location, quantity)
		if @hoard_locations.has_key?(hoard_location) == true
			nuts_quantity = @hoard_locations[hoard_location] + quantity
			@hoard_locations[hoard_location] = nuts_quantity
		else
			@hoard_locations[hoard_location] = quantity
		end
	end

	def eat_something
		@hibernate = false
		
		hoard_locations_array = @hoard_locations.keys
		@hoard_locations[hoard_locations_array.sample] -= 3

		@hibernate = true
	end

	def forget
	# .sample works on Arrays, not on Hashes
	# .delete("key_value") will delete 'key' 'value' pair
		hoard_locations_array = @hoard_locations.keys
		@hoard_locations.delete(hoard_locations_array.sample)
		"a new tree has sprouted!"
	end

end

squirrels = []

color = ["gray", "red", "black", "albino"]
location = ["city", "state", "woods", "in town"]

squirrel = Squirrel.new(color.sample, location.sample)

p squirrel

squirrel.store_food("tree", 5)
squirrel.store_food("tree", 10)
squirrel.store_food("bush", 5)
p squirrel

squirrel.eat_something
p squirrel

squirrel.forget
p squirrel


# TEST CODE 

# squirrels = []

# 3. times do
# 	squirrels << Squirrel.new(color.sample, location.sample)
# end

# p squirrels
