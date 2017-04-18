def hamster_name

	puts "Hello, what is your name?"
	input = gets.chomp
end

puts "Nice to meet you, Hamster #{hamster_name}!"

def squeak_vol

	puts "How loud do you squeak on a scale from 1 to 10?"
	input = gets.chomp.to_i
end

puts "Wow, you're a #{squeak_vol} on the Squeak-O-Meter!"

def fur_color

	puts "What color is your fur?"
	input = gets.chomp
end 

puts "OMG, #{fur_color} is my favorite color of fur!"

def adoption

	puts "Are you looking for a good home? (y/n)"
	input = gets.chomp

		if input == "y" 
			puts "Great! We know the perfect family for you!"
		elsif input == "n"
			puts "I'm so glad that you've found a good home!"
		else 
			puts "Please, try again; choose y or n."
		end
end

adoption

def age

    puts "How old are you?"
    input = gets.chomp

    while true
        if input.to_i.to_s == input
            puts "Awww, #{input} is such a wonderful age!"
            break
        else
            puts "Don't be shy. Age ain't nothin' but a number!"
            input = gets.chomp
        end
    end
end

age