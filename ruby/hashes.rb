# Challenge 5.2: Arrays and Hashes
# Release 2: Use a Hash in a Program

# create an empty hash
# prompt to user to fill in missing information
# convert user input to appropriate data type
# give the user an opportunity to update a 'key'; if 
# the user types 'none', skip it; if the user types 'key'
# name the program should ask for new 'value' and update
# no need to handle user errors

puts "Interior Designer Client Information"

interior_design = {}

puts "Client's First Name:"
	interior_design[:first_name] = gets.chomp

puts "Client's Last Name:"
	interior_design[:last_name] = gets.chomp

puts "Phone Number:"
	interior_design[:phone_number] = gets.chomp.to_i

puts "Client's Age:"
	interior_design[:age] = gets.chomp.to_i

puts "Marital Status: (single, dating or married"
	interior_design[:marital_status] = gets.chomp

puts "Does the Client have Children? (yes or no)"
	input = gets.chomp
	if input == "yes"
		ages = []
		puts "What are their Ages?"
		interior_design[:ages] = ages.push(gets.chomp.to_i)
	else input == "no"
		nil
	end

puts "Client's Style Preferences:"
	style = []
	interior_design[:style] = style.push(gets.chomp)

puts "What is the Budget?"
	interior_design[:budget] = gets.chomp.to_i

p interior_design

puts "Client Information:"

interior_design[:full_name] = "#{:first_name} + #{:last_name}"
puts "Client's Name:" = "#{full_name}"

puts "Phone Number:" = "#{:phone_number}"

puts "Client's Age:" = "#{:age}"

puts "Children's Ages:" = "#{:ages}"

puts "Client's Style Preferences:" = "#{:style}"

puts "Client's Budget:" = "#{:budget}"


puts "Does the information above look correct? If you need to change your input, please type 'YES' and follow the prompts. If everything looks correct, please type 'DONE'."
	input = gets.chomp.downcase

	if input == "done"
		puts "Exit Questionnaire"
	elsif input == "yes"
		puts "Please type the category name you wish to update."
		category = gets.chomp.to_sym
		puts "Please update with the correct information."
		update = gets.chomp
		interior_design[:"gets.chomp.to_sym"] = "#{update}"
	else
		puts "Does the information above look correct? If you need to change your input, please type 'YES' and follow the prompts. If everything looks correct, please type 'DONE'."
	end

end

p interior_design
