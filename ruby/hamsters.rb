
def hamsters
#def hamster_name

	puts "Hello, what is your name?"
	hamster_name = gets.chomp
#end

puts "Nice to meet you, Hamster #{hamster_name}!"
puts ""

#def squeak_vol

	puts "How loud do you squeak on a scale from 1 to 10?"
	squeak_vol = gets.chomp.to_i
#end

puts "Wow, you're a #{squeak_vol} on the Squeak-O-Meter!"
puts ""

#def fur_color

	puts "What color is your fur?"
	fur_color = gets.chomp
#end 

puts "OMG, #{fur_color} is my favorite color of fur!"
puts ""

#def age

    puts "How old are you?"
    hamster_age = gets.chomp.to_i

    if hamster_age == 0
        hamster_age = nil
        puts "Okay, age ain't nothin' but a number!"
        puts ""
    else
        puts "Awww, #{hamster_age} is such a wonderful age!"
        puts ""
    end
#end

#def adoption

    response = false
    until response == true

	puts "Are you looking for a good home? (y/n)"
	adopt = gets.chomp

		if adopt == "y" 
			puts "Great! We have the PERFECT family for you!"
			adopt = true
			response = true
		elsif adopt == "n"
			puts "I'm so glad that you've found a good home!"
			adopt = false
			response = true
		else 
			puts "Please, try again; choose y or n."
		end
	end
#end

    puts ""
	puts "Hamster Name: #{hamster_name.upcase}"
	puts "Squeak Volume: #{squeak_vol}"
	puts "Fur Color: #{fur_color.upcase}"
    

	if hamster_age == nil
		puts "Age: N/A"
	else
		puts "Hamster Age: #{hamster_age}"
	end

	if adopt == true
		puts "Adoption Status: CLEARED"
	else
		puts "Adoption Status: N/A"
	end

end

hamsters
