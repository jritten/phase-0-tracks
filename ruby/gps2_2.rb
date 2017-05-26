# GPS 2.2: Ruby
# paired with @lindsayrmaher
# paired with @hannie

# https://repl.it/IS6o/3

# Release 0: Pseudocode

# create a new list
# add an item with a quantity to the list
# remove an item from the list
# update quantities for items in your list
# print the list (Consider how to make it look nice!)

# Method to create a list:
# input: string of items separated by spaces 
# (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list:
# input: list, item name, and optional quantity
# steps:
# output:

# Method to remove an item from the list:
# input:
# steps:
# output:

# Method to update the quantity of an item:
# input:
# steps:
# output:

# Method to print a list and make it look pretty:
# input:
# steps:
# output:


# Release 1: Initial Solution

# Method to Create a List: 

# create an empty hash, name that the list we're trying to build
	# split up the string into individual items - use .split(' ')
	# create a loop that will add each array item to the hash as a key 
		# set default quantity
  		# hash value (all the same value)
  		# print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] - a hash 

grocery_list = {}

def list_builder(list_input)

static_grocery_list = {}

	grocery_array = list_input.split(',')

	grocery_array.each do |item|
  		static_grocery_list[item] = 10
  	end

  return static_grocery_list

end

grocery_hash = list_builder("Bread, Eggs, Cheese") #grocery_list


# Method to Add an Item to a List:

# input: list, item name, and optional quantity
# steps: added condition to account for IF the item already 
# exists as a key, update it's quantity 
		# IF it's a new item, create a new key, value pair
		# p the update grocery list
# output: the hash is updated with the key and value pair we created

def add_item(list_hash, item, quantity)

	if list_hash.include?(item)
		list_hash[item] += quantity 
	else
		list_hash[item] = quantity
	end

	return list_hash

end

add_item(grocery_hash, "Lemonade", 2)
add_item(grocery_hash, "Tomatoes", 3)
add_item(grocery_hash, "Onions", 1)
add_item(grocery_hash, "Ice Cream", 4)


# Method to Remove an Item from the List: 

# input: list, item name index
# steps: check if item is in the list
# 	if it matches one key, delete that index from the hash
# output: the updated hash with index item removed

def remove_item(list_hash, item)
	list_hash.delete_if {|key, value| key == item }

	return list_hash

end

remove_item(grocery_hash, "Lemonade")


# Method to Update the Quantity of an Item: 

# input: key name, quantity
# steps: check IF new quantity is greater than 0, then
# 	the existing quantity will update to add in new quantity
# 	otherwise stay the same
# output: if there is a change, we will print the hash with update quantities 
# otherwise return/print nothing

def update_quantity_number(list_hash, item, new_quantity)

	if new_quantity >= 0 
		list_hash[item] = new_quantity
	end

	return list_hash

end

update_quantity_number(grocery_hash, "Ice Cream", 1)


# Method to Print a List and Make it Look Pretty:

# input: the hash
# steps: takes the key and value and prints each of them separately
# output: listed items printed out one by one

def print_list(list_hash)
	
	puts "Grocery List:"
	puts ""
	list_hash.each_pair do |key, value|

	puts "#{key}: #{value}"
	puts ""

	end

end

print_list(grocery_hash)


# Release 2: Test Your Solution

# Make sure your code works as you expect. Using your initial solution:

# Create a new list
# Add the following items to your list:
# 	Lemonade, qty: 2
# 	Tomatoes, qty: 3
# 	Onions, qty: 1
# 	Ice Cream, qty: 4
# Remove the Lemonade from your list
# Update the Ice Cream quantity to 1
# Print out your list (Is this readable and nice looking)?


# Release 3: Refactor

# With your partner, review the code. Is it readable and DRY? 
# Consider the logic you implemented in your initial solution. 
# Are there any Ruby methods you can use to simplify your code? 
# Feel free to go into the docs to find methods.


# Release 4: Reflect

# What did you learn about pseudocode from working on this challenge?
# I learned that pseudocode is totally necessary in order to competently 
# work on and complete coding challenges. They provide a great outline for 
# a solution to the problem you are trying to solve, and it allows you  to
# break up the solution into workable parts with more defined methods.

# What are the tradeoffs of using arrays and hashes for this challenge?
# Creating an array of hashes within a hash allows us to easily and quickly
# access keys and values within the hash using their index within the array.

# What does a method return? - 'return value; object'
# A method returns a 'return value'. Methods always return exactly one 
# single thing, an object. The returned object can be anything, but 
# a method can only return one thing, and it also always returns something.
# Every method always returns exactly one object.

# What kind of things can you pass into methods as arguments?
# Positional Arguments, Array Arguments, Hash Arguments, Keyword Arguments
# http://codeloveandboards.com/blog/2014/02/05/ruby-and-method-arguments/

# How can you pass information between methods?
# Once you return the value from your method, you can assing the 
# return_value = new_variable which you can then use as your value
# to modify and pass through the next method, and so on.

# What concepts were solidified in this challenge?
# The use of hashes and arrays and the concepts of 'keys', 'values' 
# and pair were really solidified in this challenge.

# What concepts are still confusing?
# I need a lot more practice with pseudocoding a challenge on my own.


# Release 5: Submit