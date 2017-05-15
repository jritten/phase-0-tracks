# Challenge 6.4: Modules
# Release 2: Mix in a Module

# 1. create a module
# 2. declare classes
# 3. add module to classes
# 4. add module to instance of classes

# But wait. Where's that self keyword we just learned about? 
# When we're writing a module as a mixin designed to add 
# instance methods to a class, we don't use the self keyword. 
# We can define our module methods the same way we would write 
# instance methods inside of a class.

module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end

class Bird
	include Flight
	# add module to Bird class
end

class Plane
	include Flight
	# add module to Plane class
end

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)