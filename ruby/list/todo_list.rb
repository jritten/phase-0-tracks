# Challenge 6.5: Testing a Class with RSpec
# Release 3: Write a Class to Satisfy Tests

class TodoList

	def initialize(get_items)
		@get_items = get_items
	end

	def add_item(item)
		@get_items << (item)
	end

	def delete_item(item)
		@get_items.delete(item) 
	end

	def retrieve_item([index])
		@get_items[index] = item
	end
end

list = TodoList.new(["do the dishes", "mow the lawn"])
list.add_item("mop")
list.delete_item("do the dishs")
list.retrieve_item([0])