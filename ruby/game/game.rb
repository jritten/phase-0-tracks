# Challenge 6.7: A Game Class
# Release 0: Review a Code Sample

#https://repl.it/Cb3l/910

# Consider the following questions:

# What behaviors does the game have?
# What state does the game have?
# Observe how the driver code acts as a bridge between 
# the class and the user. Are there times when user input 
# cannot be passed directly to the class, and instead 
# must be adjusted from "human logic" to "computer logic"?
# What would you have to change if you wanted to limit 
# how many guesses the user gets?

# Release 1: Design a Game

# PSEUDOCODE

# user enters a word; word = gets.chomp
# another uses guesses the words; guess == word
# limit the number of guesses to the length of the word;
# guess_count = word.length
# repeated guesses don't count against user
# guessing player receives continual feedback on current
# state of word; "_ _ _" => "_ o _"
# when input[index] == word[index] 
# replace "_" with "letter" 
# congratulate the user if they win 
# taunt the user if they lose


# Release 2: Test and Build Your Game

class Game
	attr_reader :guess_count, :letter
	attr_accessor :word, :guessed

	def initialize
		@word = []
		@letters = []
		@guessed = []
		@guess_count = 0
		@game_end = false
	end

	def word(word)
		@word = word.downcase!.split(',')
	end

	def letters
		@letters << ("_" * word_array.length)
	end

	def guessed(letter)
		@guessed << letter.downcase!
	end

	def solution
		while @guess_count >= @word.length
			@game_end = true
				if @word == @guessed
					p "Congratulations! You got it!"
				elsif  @word != @guessed
					p "Sorry, better luck next time!"
				else
					p ":("
				end
		end 
	end

end

	def letter_check(word, letter)
		while @guess_count < @word.length
			if @word.include? letter
				@word[index] == @letters[index]
				@letters.insert(index, letter)
				p @word
				p "You have (#{@guess_count} - 1) tries left."
			elsif @guessed.include? letter
				p @word
				p "Oops! Please, try again."
				break
			else
				p @word
				p "Nice try. Please, try again."
			end
		@guess_count += 1
		end
	end

game = Game.new


# Driver Method

p "Player 1, please choose a word."

game.word = gets.chomp

p "Player 2, please guess a letter."

game.letter = gets.chomp

game.letter_check


