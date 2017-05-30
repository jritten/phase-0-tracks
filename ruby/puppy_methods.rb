# Challenge 6.2: Instance Methods

# https://repl.it/IX8t/1

# Release 0: Add Behavior to a Class

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

# 1. Add driver code at the bottom that initializes an instance of Puppy, 
# and verify that your instance can now fetch a ball. 
# Run the file from the command line to check your work.
# 2. Add a speak method that takes an integer, and then prints "Woof!" that many times.
# 3. Add a roll_over method that just prints "*rolls over*".
# 4. Add a dog_years method that takes an integer (of human years) and 
# converts that number to dog years, returning a new integer.
# 5. Add one more trick -- whichever one you'd like.
# If you haven't already, update your driver code to demonstrate that 
# all of these methods work as expected.

# Puppy Class

class Puppy
    
    def initialize
        puts "Initializing new puppy instance"
    end
    
    #fetch

    def fetch(toy)
        puts "I brought back the #{toy}!"
        toy
    end
    
    #speak

    def speak(num)
        (num).times do
        puts "Woof"
        end
    end

    #roll over

    def roll_over
        puts "*rolls over*"
    end

    #dog years 

    def dog_years(age)
        dog_years = age * 7
        puts "Doggy age is #{dog_years}"
    end
    
    # dog toys
    
    def toy(toys)
        toy_array = toys.split(',').to_a
        puts "Bring me a#{toy_array[2]}"
      end
      
end

# Initialize a New Puppy

bolo = Puppy.new

# Calling the Methods

bolo.fetch("rubber ball")
bolo.speak(2)
bolo.roll_over
bolo.dog_years(4)
bolo.toy("stick, bear, ball, hoop")


#Release 1: Declare an Initialize Method

# Add a method to your Puppy class named initialize. 
# It should print "Initializing new puppy instance ..."
# Without changing your driver code, run the program. 
# Does initialize run? When? it doesn't run at all or print anything.

# What happens if you deliberately misspell the name of the 
# initialize method in its definition? 
# Do you get an error? it doesn't run at all or print anything.
# Take note of how Ruby behaves in this circumstance, because accidentally 
# misspelling "initialize" has cost many DBC students hours of their lives!


#Release 2: Write Your Own Class, and Experiment!

# In puppy_methods.rb, design and implement your own class below the 
# Puppy class -- anything you'd like, but it should have an initialize 
# method and at least two other instance methods. Then do the following:
# 1. Use a loop to make 50 instances of your class.
# 2. Modify your loop so that it stores all of the instances in a data structure.
# 3. Iterate over that data structure using .each and call the instance methods you wrote on each instance. So if you wrote a Gymnast class, this is where you'd call .flip and .jump on each of your instances of Gymnast.

class Shark

	def initialize
		puts "Initializing Shark Instance..."
	end

	def attack
		puts "Watch Out!"
	end

	def bite
		puts "That's my leg, asshole!"
	end

	def lunch(num)
		(num).times do 
		puts "...gurgle..."
		end
	end

	sharks = []

	50.times do 
		sharks << Shark.new
	end

	sharks.each do |instance|
		instance.attack
		instance.bite
		instance.lunch(3)
	end 

end