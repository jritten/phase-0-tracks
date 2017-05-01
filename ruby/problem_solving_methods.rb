
# Release 0: Implement a Simple Search

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






