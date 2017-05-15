# GPS 3.1: Ruby
# Virus Predictor

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# RELEASE 0: RUN THE CODE
# Look at the my_solution.rb file. Look at the output. 
# Look at the input (it's in the state_data.rb file). 
# Explain what the program is doing.

# RELEASE 1: REQUIRE_RELATIVE
# Write a comment explaining the require_relative statement. 
# What does it do? How does it work?
# How does it differ from require?

# RELEASE 3: COMMENT EACH METHOD
# Comment each method (above the method) and define 
# what it is responsible for doing. 

# RELEASE 5: REFACTOR VIRUS_EFFECTS
# First, ONLY look at the virus_effects method. 
# (Do not look at predicted_deaths or speed_of_spread themselves.) 
# It's a short but deceptive method that isn't quite DRY. 
# Consider the scope of instance variables to determine what could be 
# refactored. Once you figure out what the issue is, you'll need to 
# edit the predicted_deaths and speed_of_spread methods.

# RELEASE 6: PRIVATE
# What is the purpose of "private"? What happens if you move it above 
# virus_effects? When would you want to use this method?

# RELEASE 7: REFACTOR
# Refactor the private methods predicted_deaths and speed_of_spread. 
# How can you make them more DRY?
# As an FYI, it's probably not the best decision to combine these methods 
# even though they are similar because they are responsible for different 
# things. If the way to calculate either of these changed and you had 
# combined them, they would be much more difficult to separate.


require_relative 'state_data'

class VirusPredictor
  attr_reader :state, :population, :population_density

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  private

  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section

# RELEASE 8: REFLECT
# What are the differences between the two different hash syntaxes 
# shown in the state_data file?
# What does require_relative do? How is it different from require?
# What are some ways to iterate through a hash?
# When refactoring virus_effects, what stood out to you about the 
# variables, if anything?
# What concept did you most solidify in this challenge?

# Release 9: Submit
# Go through your Git workflow to create a pull request and merge it 
# to the master. Don't forget to clean up your old branches. Make sure 
# you can see your code on your remote repository. 

# Release 10: Give Feedback to Your Pair
# Make sure it's actionable, specific, and kind.