# Week 7 Ruby Assessment Extra Challenge

# require_relative "squirrel"

class Nuts
	attr_reader 
	attr_accessor

	def initialize
		@locations = locations
		@hoard = hoard
	end

	# def hoard_locations (location, quantity)
	# 	hoard_locations = []
	# end

	# def store_food(hoard_location, quantity)
	# 	if store_food(location) == hoard_locations(location)			
	# 		new_quantity = store_food(quantity) + hoard_locations(quantity)
	# 		store_food(location, new_quantity)
	# 	else 
	# 		new_entry = store_food(location, quantity)
	# 	end
	# end

	def store_food(hoard_location, quantity)
		if @hoard_locations.has_key?(hoard_location) == true
			stash_quantity = @hoard_locations[hoard_location] + quantity
			@hoard_locations[hoard_location] = stash_quantity
		else
			@hoard_locations[hoard_location] = quantity
		end
	end

	def eat_something(squirrel)
		squirrel.wake_up
		@location.sample
		.delete 3 nuts
		.sleep
	end

	def forget
		hoard_locations.delete.random
		"a new tree has sprouted!"
	end

end