
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

# def fib(bit)
# 	fib_array = [0]
# 	x = 0
# 	y = 1
# 	z = 0
# 	if bit >= 2
# 		fib_array = [*1..bit]
# 			until fib_array.count
# 				z = x + y
# 				y = x
# 				z = y 
# 				fib_array << j
# 			end
# 		end
# 	p fib_array
# end

# fib(100)

def fib(count)
	fib_array = [*0, 1..number[z]]
	until fib_array.count > count
		number[0] = 0
		number[1] = 1
		number[z] = number[-1] + number[-2]
		number[z] = number[-1]
		fib_array << number[-1]
		fib(count) == number[-1]
	end
p fib(count)
end

fib(100)
