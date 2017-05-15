# Week 5 Booster Video

# HOUSE BUILDER

# Allow the user to create a house, 
# then add rooms,
# then add items

# House can have up to 5 rooms
# Room can have an unlimited number of items

# Use Functional Decomposition
# the house as a hash; a collection of rooms that have names
# nested data structures
# each hash room 'key' is an array of items 'values'
# def method! = method modifies a piece of data without 
# having to rassign the variables value
# ! 'dangerous' modifies data on a global scope


# BUSINESS LOGIC

#def parse_room_input(inputted_name)
	# clean up input; .downcase.capitalize, delete punctuation
#end

# call method within 'while can_add_rooms' method

def add_room_to_house!(house, room_name)
	#return false if house.keys.length == 5
	if house.keys.length == 5
		false
	else
		house[room_name] =[]
	#return true if 
		true
	end
end

def add_item_to_room!(house, room_name, item_name)
	house[room_name] << item_name
end

house = {}


# USER INTERFACE

def print_house(house) # packages data; prints data to user
	puts "---------------"
	puts "Current House Configuration:"
	house.keys.each_with_index do |room_name, index| #|items| #|key, value| #|k, v|
	# iterate through our house 'hash'
		puts "#{index} - #{room_name}: #{house[room_name]}"#{items}"
	end
	#p house
	puts "---------------"
end

# Let the user add rooms
can_add_rooms = true

# Stop loop when rooms cannot be added
while can_add_rooms
	# Get a room name from the user
	puts "Type the name of a room to add (or type 'done'):"
	room_name = gets.chomp

	# If the user is done, stop loop
	break if room_name == 'done'

	# Otherwise, add the room to the house
	can_add_rooms = add_room_to_house!(house, room_name) #(house, parse_room_input(room_name))
	if !can_add_rooms
		puts "Sorry, that's too many rooms!"
	end
	# add error message if user experiences error, can't add room
	print_house(house)
end


# Let the user add items to rooms:
# change 'house.each do' to 'house.keys.each_with_index do'
# change 'puts "#{room_name}: #{items}"' to '#{house[room_name]}'
# add 'puts #{index} - ...'
# In an infinite loop:
loop do
	# Ask the user for the number of the room they want to add
	# items to
	puts "Enter the number of the room to add an item to (or type 'done'):"
	inputted_idx = gets.chomp

	# If the user is done, 'break'
	break if inputted_idx == 'done' # sentinel value; checks for value
									# that indicates you're 'done'
	# Otherwise, add the 'item' to the 'room'
	room_idx = inputted_idx.to_i
	puts "Enter the item to add: "
	item_to_add = gets.chomp
	add_item_to_room!(house, house.keys[room_idx], item_to_add)

	# Print the new house configuration
	print_house(house)
end


# TEST CODE

# rooms = ["living Room", "bedroom", "bathroom", "kitchen", "bedroom 2"] #["bedroom 3"] 
# # "bedroom 3" can't be created, doesn't fit method parameters

# rooms.each do |room| # iterate through rooms; loop through array
# 	#add_room_to_house!(house, room) # each room will get added to house 'hash' as a 'key' 
# 	                                 # the 'value' of each 'key' is an empty array
# 	room_added = add_room_to_house!(house, room)
# 	add_item_to_room!(house, room, "cat") if room_added                              
# end

# print_house(house) # prints each room as an empty array


# TEST PROGRAM IN LINUX

# kitchen
# living room
# bathroom
# bedroom 1
# bedroom 1
# done
# 2
# toilet
# 0
# oven
# 0
# table
# 3
# bed 
# done

# IN TERMINAL

#cat input.txt 
# feed one program into the next, like legos, in Linux

#cat input.txt | ruby house_builder.rb
# pipe character - feed into another program


# EXAMPLE CODE 

# def change_boolean(boolean)
# 	boolean = !boolean # reverses boolean
# end

# def change_num(x)
# 	X += 1
# 	p x
# end

# def change_arr(arr)
# 	copy = arr.dup
# 	arr << 1
# 	return copy
# end

# test_boolean = true
# n = 5
# test_array = [2,3,4]

# p test_boolean
# p n
# p test_array

# change_boolean(test_boolean)
# change_num(n)
# change_arr(test_array)

# p test_boolean # not modified; primitive value, does not change
# p n # not modified; does not keep changes outside scope
# p test_array # modified; keeps changes outside scope



