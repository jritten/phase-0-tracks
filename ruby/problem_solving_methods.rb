# Challenge 5.6: Solving Problems with Data Structures
# Release 0: Implement a Simple Search

# Pseudocode:
# create a counter starting at 0
# for each value of array
  # check if item equals target
  # if so, return count
  # else, keep going and add one to  count
# no items match, return nil

# def search_array(arr, num)
# 	index = 0

# 	arr.each do |number|
# 		if number == num
# 			p index
# 		else
# 			index += 1
# 		end
# 	end
# 	p nil
# end

# search_array([72, 95, 26, 1], 4)

# def search_array(arr, num)
# 	index = 0

# 	arr.length.times do |index|
# 		if arr[index] == num
# 			puts index
# 		else
# 			index += 1
# 		end
# 	end
# 	puts nil
# end

# search_array([72, 95, 26, 4], 4)

# Release 1: Calculate Fibonacci Numbers

# Pseudocode:
# start off with 0 and 1
# the next number is equal to the sum of the last two
# except for 0 and 1 we started with
# print results in an array

def fib_method(number)

	fib_array = [0, 1]
	index = 0

	while index < number
		fib_number = fib_array[-1] + fib_array[-2]
		fib_array << fib_number
		index += 1
	end

	fib_100 = 218922995834555169026

	if fib_array[-1] == fib_100
		puts "Correct!"
	elsif index == number
		puts "Fibonacci Sequence: "
		p fib_array
		
	end

end

fib_method(100)

# Release 2: Sort an Array

# Chose to learn insertion sort. In general, an example of how the general
# works in action works best for my understanding.  Reading about the sorting
# method, it seems like we're supposed to make a new array which will have the
# integers from the unsorted array inserted into it.  We start by taking the
# value from the first array and set that as our reference value. We must
# remember to remove it from the original array, or we will compare it to itself
# and we will end up with a duplicate value in the last array. When the value
# is smaller than the reference, it is placed before the reference in the array.
# If the value getting sorted is larger than the reference, it is placed after
# the reference. This is repeated for all elements in the array using each.do.

# Pseudocode:
# unsorted array = [array]
# sorted array = first value of unsorted array
# remove first value from unsorted array to prevent duplicates in output.
# begin loop
# compare value at index 0 in unsorted array to reference in sorted array.
# if unsorted value is smaller than sorted value, insert at sorted index value
# if unsorted value is larger than sorted value, insert after sorted index.
# increase sorted index by 1.
# end loop

#unsorted_array = [2, 7, 1, 3, 9, 4]

def array_sorting(unsorted_array)

  sorted_array = [unsorted_array[0]]
  unsorted_array.delete_at(0)
  unsorted_array.each do |unsorted_item|

    sorted_index = 0
    while sorted_index < sorted_array.length
      if unsorted_item <= sorted_array[sorted_index]
        sorted_array.insert(sorted_index, unsorted_item)
        break
      elsif sorted_index == sorted_array.length - 1
        sorted_array.insert(sorted_index + 1, unsorted_item)
        break
      end
      sorted_index += 1
    end

  end

  p sorted_array

end

puts "Please Define an Unsorted Array for Sorting: "
array_sorting([1, 8, 3, 5, 2, 7, 6])




