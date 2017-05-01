# Challenge 5.5: Manipulating Strings with Iteration
# Release 0: Attempt a Tricky Algorithm

# Pseudocode:
# Define a method that takes in one parameter as an argument
		# The data type of this paramter will be a string,
		# and it will be used for entering a spy's 
		# real full name (first and last)
	# The first task this method needs to complete is to
	# swap the first name with the last name (entered as the argument)

def spy_name(str)

 	split_name = str.split(' ')
 	reverse_name = split_name.reverse
 	spy_name = reverse_name.join(' ')
	
 	p spy_name
end

spy_name("Jenna Ritten")

# Write in code that provides the next vowel for every instance of a 'vowel'

def next_vowel(str)
vowels = ["a", "e", "i", "o", "u"]
letters = str.split('')
i = 0

			letters.map! { |letter| letter.next }
			new_string = letters.join('')
		
		

	p new_string
end

next_vowel("ritten")


# Release 1: Provide a User Interface
# Provide a user interface that lets a user ebter a name 
# and get a fake name back. Let the user do this repeatedly 
# until they decide to quit by typing 'quit'. (they might just hit Enter to continue)


# Release 2: Store the Aliases
