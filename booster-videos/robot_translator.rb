# Week 4 Booster Video
# Robot Translator Live-Code

# PSEUDOCODE

# ROBOT TRANSLATOR

# 1. If a letter is capitalized and it's in the first half of the 
# alphabet, it becomes "bloop"

# "b".upcase => "B"
# "B".upcase => "B"
# "B".upcase == "B" => true

# alphabet = "abcdefghijklmnopqrstuvwxyz"
# halfway = alphabet.length / 2
# halfway = 13

# if is_capitalized
# if alphabet.index(char.downcase)
# if <= halfway
# if is_capitalized && alphabet.index(char.downcase) <= halfway
# if is_capitalized && (alphabet.index(char.downcase) + 1) <= halfway
# index at 0, first char alphabet starts at 1, need to add 1 to index
# another way to do the same thing:
# if is_capitalized && alphabet.index(char.downcase) < halfway


# 2. Otherwise, if a letter is capitalized of it's the letter "e", 
# it becomes "buzz" (it's ALSO in the first half of the alphabet)

# if is_capitalized
# if char.downcase == "e"
# if is_capitalized || char == "e"


# 3. If it's not a letter at all, it becomes "boing"

# if alphabet.index(char.downcase) == nil
# if !alphabet.index(char.downcase) 
# if NOT an index; ! = not


# 4. Otherwise, it becomes "beep"

# else "beep"


# "Happy Halloween!" => "bloopbeepbeepbeepbeepboingbloopbeep
# beepbeepbeepbuzzbuzzbeepboing"


# we can check our work in IRB
# alphabet = "abcdefghijklmnopqrstuvwxyz"
# alphabet[12] => "m"
# halfway = 13
# alphabet.index("l") < halfway => true
# alphabet.index("m") < halfway => true
# alphabet.index("n") < halfway => false

# our logic correctly separates our alphabet into two halves


def translate_char(char)
# designed to be called upon by our translate_phrase method
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	halfway = alphabet.length / 2
	#halfway = 13
	is_capitalized = (char.upcase == char)

	#if alphabet.index(char.downcase) == nil
	if !alphabet.index(char.downcase)
		#return "boing"
		"boing"
	#elsif is_capitalized && (alphabet.index(char.downcase) + 1) 
		#<= halfway
	elsif is_capitalized && alphabet.index(char.downcase) < halfway
		#return "bloop"
		"bloop"
	#elsif is_capitalized || char.downcase == "e"
	elsif is_capitalized || char == "e"
		#return "buzz"
		"buzz"
	else 
		#return char
		#char
		#return "beep"
		"beep"
	end
end

def translate_phrase(phrase)
# designed to handle phrase; loops through the phrase it's given
# and takes each character, creates an empty container response 
# that we will add to as we build
	char_index = 0
	translated_response = ""
	while char_index < phrase.length
		#puts phrase[char_index] #fill in with translation logic
		translated_response << translate_char(phrase[char_index])
		# add translated response to loop; setting up our logic
		# for each char, we translate the char and feed it into our 
		# translated_response and then return the translated_response
		char_index += 1
	end
	#return translated_response
	translated_response
	# we're no longer printing inside our method 
	# which is better practice
end

#puts translate_phrase("Happy Halloween!")
#translate_phrase("Happy Halloween!")
#=>
#H
#a
#p
#p
#y
 
#H
#a
#l
#l
#o
#w
#e
#e
#n
#!

# Set Up a Test Statement

# puts translate_phrase("Happy Halloween!") == "Happy Halloween!" => 
# "bloopbeepbeepbeepbeepboingbloopbeepbeepbeepbeepbeepbuzzbuzzbeepboing"
# puts translate_phrase("Happy Halloween!") == "bloopbeepbeepbeepbeep
# boingbloopbeepbeepbeepbeepbeepbuzzbuzzbeepboing"

# we want to use Functional Decomposition to create our tranlagion logic
# we don't want our code to end up too long and nested and cause errors
# Single Responsibility; one method should do one thing
# attack a problem in little pieces and check code frequently
# Separation of Concerns; different pieces of code should have different jobs
# we solve one small problem at a time; isolate each piece of code
# Refactor Code to simplify and clean up code


# BUSINESS LOGIC

def translate_char(char)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	halfway = alphabet.length / 2
	is_capitalized = (char.upcase == char)
	index_of_char = alphabet.index(char.downcase)

	#if !alphabet.index(char.downcase)
	if !index_of_char
		"boing"
	#elsif is_capitalized && alphabet.index(char.downcase) < halfway
	elsif is_capitalized && index_of_char < halfway
		"bloop"
	elsif is_capitalized || char == "e"
		"buzz"
	else
		"beep"
	end
end

def translate_phrase(phrase)
	char_index = 0
	translated_response = ""
	while char_index < phrase.length
		translated_response << translate_char(phrase[char_index])
		char_index += 1
	end
	translated_response
end

# USER INTERFACE (can also use a while loop)

loop do
	puts "Enter a phrase to translate (or type 'q' for quit):"
	inputted_phrase = gets.chomp
	break if inputted_phrase == 'q'
puts translate_phrase(inputted_phrase)
end

#puts translate_phrase("Happy Halloween!")
#puts translate_phrase("Happy Halloween!") == "bloopbeepbeepbeepbeepboingbloopbeepbeepbeepbeepbeepbuzzbuzzbeepboing"
# this is our test statement to check that our program is working properly