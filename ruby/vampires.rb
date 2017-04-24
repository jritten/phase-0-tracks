
def vampires

puts "Welcome to Immortal Life Technologies"
puts""

counter = 0
puts "How many of the following questionnaires will be administered?"
total_employees = gets.chomp.to_i
	until counter == total_employees
	puts "Please fill out the following questionnaire to better serve your needs."
	puts ""
		
	puts "What was you full name given at the time of your birth?"
	birth_name = gets.chomp.capitalize
	puts ""
		
	puts "How many years have you roamed this planet?"
	age = gets.chomp.to_i
	puts ""

	puts "What was the year of your birth?"
	birth_year = gets.chomp.to_i
	puts ""

# Mortal Age Confirmation #

	mortal_age = false
	until mortal_age

#	puts "How many years have you roamed this planet?"
#	age = gets.chomp.to_i

#	puts "What was the year of your birth?"
#	birth_year = gets.chomp.to_i

		current_year = 2017
		if age == (current_year - birth_year)
			mortal_age = true
		else
			mortal_age = false
		end
	end

# Garlic Aversion Confirmation #

	garlic_choice = nil
	while garlic_choice == nil

	puts "Today the cafeteria is serving spaghetti. Would you care for some garlic bread? (y/n)"
	garlic = gets.chomp.downcase
	puts ""

		if garlic == "yes" || garlic == "y"
			garlic_choice = true
		elsif garlic == "no" || garlic == "n"
			garlic_choice = false
		else
			garlic_choice = nil
		end
	end

# Immortality Confirmation #

	mortality = nil
	while mortality == nil

	puts "Would you care to enroll in the Company's Health Insurance plan?"
	health = gets.chomp
	puts ""	

		if health == "yes" || health == "y"
			mortality = true
		elsif health == "no" || health == "n"
			mortality = false
		else
			mortality = nil
		end
	end

# Vampire Booleans #

#	V1 = vampire 

    vampire = nil
	while vampire == nil

		if name == "Drake Cula"
			puts "#{birth_name.capitalize} is definitely a vampire!"
			vampire = true

		elsif name == "Tu Fang"
			puts "#{birth_name.capitalize} is definitely a vampire!"
			vampire = true

		elsif mortal_age && (garlic_choice || mortality)
			puts "#{birth_name.capitalize} is probably not a vampire."
			vampire = false

		elsif (mortal_age && (garlic_choice || mortality)) != true
			puts "#{birth_name.capitalize} is probably a vampire."
			vampire = false

		elsif (mortal_age && garlic_choice && mortality) != true
			puts "#{birth_name.capitalize} is most certainly a vampire!"
			vampire = true

		else
			puts "Results Inconclusive. Requires Further Analysis."
			vampire = nil
		end
	end

#	vampire

# Suspicious Allergy Input Loop #

	loop

	input = ""
	until input == "done"

	puts "Do you suffer from any unusual allergies? Please list all known allergies below. You may type 'DONE' when finished to exit the survey."
	allergy = gets.chomp.downcase	

		if allergy == "sunshine"
			puts "Probably a Vampire!"
			input == "done"
		elsif allergy == "done"
			puts "Thank you very much for completing the survey."
			input == "done"
		else
			puts "Please type 'DONE' when finished to exit the survey."
		end
	end

#	allergy


	employees += 1

	end


puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

end


vampires


