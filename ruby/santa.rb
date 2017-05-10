# Challenge 6.3: Attributes
# Release 0: Bring Santa to Life

# Eventually, your simulator will build thousands of Santas, 
# but for now, your class should have three instance methods:

# 1. A speak method that will print "Ho, ho, ho! Haaaappy holidays!" 
# (Santa has been working on being more inclusive.)
# 2. An eat_milk_and_cookies method that takes a cookie type 
# (example: "snickerdoodle") as a parameter and prints 
# "That was a good <type of cookie here>!" 
# 3. An initialize method that prints "Initializing Santa instance ...".
# 4. Add a bit of code below your class declaration to check that 
# you're able to initialize a Santa instance and call its methods.

# Santa class

class Santa

	attr_reader :age
	attr_accessor :gender, :ethnicity, :reindeer_ranking

# 3.
	def initialize(gender, ethnicity)
		#p "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		p "Initializing Santa instance ..."

	end
# 1.
	def speak
		p "Ho, ho, ho! Haaaappy holidays!"

	end

# 2.
	def eat_milk_and_cookies(cookie)
		#p "What's your favorite cookie?"
		#cookie = gets.chomp.downcase
		p "That was a good #{cookie} cookie!" 
	end

	def gender=(gender_choice)
		@gender = gender_choice
	end

	#def gender
		#return @gender
	#	@gender
	#end

	def ethnicity=(ethnic_choice)
		@ethnicity = ethnic_choice
	end

	#def ethnicity
		#return @ethnicity
	#	@ethnicity
	#end

	def celebrate_birthday
		@age += 1
	end

	def age
		#return @age
		@age
	end

	def get_mad_at(reindeer_name)
		#reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		# choose a reindeer name, move that reindeer to the end of the array
		if @reindeer_ranking.include?(reindeer_name)
			@reindeer_ranking.delete(reindeer_name)
			@reindeer_ranking.push(reindeer_name)
		else
			p "Sorry, #{reindeer_name} isn't one of Santa's reindeers."
		end
		@reindeer_ranking
	end

	def about
		p "Gender: #{@gender}"
		p "Ethnicity: #{@ethnicity}"
		p "Reindeer Ranking: #{@reindeer_ranking}"
		p "Age: #{@age}"
	end

#end

# 4. 

# Initialize a New Santa Instance:

#santa = Santa.new("gender", "ethnicity")
# prints "Initializing Santa instance..."

# Call the Methods:

santa = Santa.new("female", "jewish")

santa.speak 
# prints "Ho, ho, ho! Haaaappy holidays!"

santa.eat_milk_and_cookies("snickerdoodle")
# prints "That was a good #{cookie} cookie!" 

santa.gender
# prints "What gender do you most identify with?"

santa.ethnicity
# prints "What ethnicity do you most identify with?"

santa.celebrate_birthday
# prints "Age: 1"

santa.get_mad_at("Vixen")
# prints "Vixen" at end of @reindeer_ranking array

santa.about
# prints attributes

# Add a lot of Santa Instances:

	def santa_array
	# define a method
	genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
	ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

	santas = []
	# create an empty array
		250.times do
			santas << Santa.new(genders.sample, ethnicities.sample)
		end

	santas.each do |instance|
		# loop through the array
			#santa.speak
			#santa.eat_milk_and_cookies("cookie")
			#santa.gender
			#santa.ethnicity
			#santa.about			
			# call on each method
			instance.about
		end

	end

santa.santa_array
# prints santas array

end
# close class Santa


# Release 1: Give Santa Some Attributes

# Update your Santa class with the following attributes:

# 1. gender, which will be a string passed in on initialization
# 2. ethnicity, which will be a string passed in on initialization
# 3. reindeer_ranking, an array of reindeer from most preferred to 
# least preferred. This is not passed in on initialization; it simply 
# gets a default value of ["Rudolph", "Dasher", "Dancer", "Prancer", 
# "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
# 4. age, which is not passed in on initialization and defaults to 0

# @gender = gender

# @ethnicity = ethnicity

# @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

# @age = 0

# Now, our simulated Santas can sign up for the conference 
# using whatever identifying terms feel best to them. 
# The following initialization code would work:

#santas = []
#santas << Santa.new("agender", "black")
#santas << Santa.new("female", "Latino")
#santas << Santa.new("bigender", "white")
#santas << Santa.new("male", "Japanese")
#santas << Santa.new("female", "prefer not to say")
#santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
#santas << Santa.new("N/A", "N/A")

# We're making an empty array, and then adding a lot of Santa 
# instances to it. If we wanted to interact with the Santas, we 
# would need to loop through the array and call methods on each one. 

# Notice how the code above is a bit repetitive as we keep adding Santa instances into the array? That's your cue to possibly refactor. Note that the below code would also work (as would several other solutions):

#santas = []
#example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
#example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
#example_genders.length.times do |i|
#  santas << Santa.new(example_genders[i], example_ethnicities[i])
#end

# Add some diverse initializations to your file as driver code, 
# then test your work by running the program from the command line. 
# Feel free to get fancy with loops and whatnot, or keep it simple 
# if you prefer.


# Release 2: Change an Attribute with a Method

# What happens when you try to access the attributes of an instance 
# in any code you've written outside the class? If you initialize a 
# new Santa, you'll find that you can't access any of its data.

# Try the following code in IRB:

#class Reindeer
#  def initialize(name)
#    @name = name
#  end
#end

#reindeer = Reindeer.new("Blitzen") 
# => #<Reindeer:0x007f88d1924148 @name="Blitzen">
#reindeer.name
# NoMethodError: undefined method `name' for #<Reindeer:0x007f88d1924148 @name="Blitzen">
#	from (irb):7

# Ruby will tell you that '.name' is an undefined method. Of course it's 
# undefined -- 'name' is an attribute, not a method!
# But attributes only exist inside the class. 
# This means that if we want attributes to be available to any code 
# outside the class (and often, that is definitely what we want), we 
# need to write a method that returns the requested data.
# This is our first inkling of the idea that a class has an interface -- 
# a set of methods available to the outside Ruby world. 
# A class might also have attributes and methods that it keeps private 
# for one reason or another, made unavailable anywhere but code written 
# inside the class declaration.
# But you can add getter and setter methods to your class to open up 
# attribute access to the outside world:

#Update an Attribute:

#class Class

#	def initialize(name)
#	@name = name
#	end  

#   def method(attribute)
#	puts "something"
#	@attribute = attribute (THIS UPDATES THE ATTRIBUTE)
#   end

#	def about  (METHOD PRINTS TO SCREEN)
#   puts "Name: #{@name}"
#	puts "Attribute: #{@attribute}"
#	end

#end

#new_name = Class.new("Name")
#Class.about  (PRINTS TO SCREEN)

# 'getter' methods make somthing readable:

#def name
#	@name
#end

# 'setter' methods make somthing writeable:
# this allows for the attribute to be changed from 
# outside the class, instead of inside the class

#def name=(new_name)
#	@name = new_name
#end

#reindeer.name = "whatever I want it to be"

# Release 3: Refactor with attr_reader and attr_accessor

# Refactor your code with attr_reader and attr_accessor. 
# Verify that your driver code still works.


# Release 4: Build Many, Many Santas

# Obviously, no one wants to create ten thousand Santas by hand. 
# That's what computers are for!

# Use our array of example genders and an array of example ethnicities 
# (and feel free to add to it if you like -- each array could have a lot 
# more options in it!) to create your Santas with a randomly selected gender 
# and a randomly selected ethnicity. (How do you randomly select an array 
# item? The Array documentation should be able to help you out there!)
# Set your new Santa's age to a random number between 0 and 140.
# No need to store your Santas in a data structure, but your program should 
# print out the attributes of each Santa using the instance methods that 
# give you access to that data.
