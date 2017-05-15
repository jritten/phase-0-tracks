# Challenge 6.4: Modules

# What is a Module?

# Sometimes, we encounter a task that we have to do frequently enough 
# that we want to define a method for it, or even several methods that 
# make sense as a set. A toolkit of this sort doesn't sound like a class, 
# because it isn't a genre of objects -- it is just a solitary set of behavior. It doesn't have attributes, and we don't need multiple copies of it, so there's no reason to call .new on it. We just want a way to neatly compartmentalize a set of related methods.

# When to Use a Module

# In Ruby, such a set of methods is called a module.
# Modules have two main uses:
# 1. Modules provide compartmentalization for methods, so instead of 
# calling 'some_method', you would call 'SomeModule.some_method' -- 
# This compartmentalization prevents clutter and decreases the likelihood 
# that one programmer might accidentally overwrite the method of another programmer. 

# calculate_tax
# FederalTaxAssessor.calculate_tax
# StateTaxAssessor.calculate_tax
# CityTaxAssessor.calculate_tax

#This practice of compartmentalization is called 'namespacing'.

# 2. Modules can be written as mixins, meaning they can be "mixed in" to 
# classes to give classes more functionality. Think of mixins as a sort of 
# extension pack or toolbelt that can be used by several different classes. 


# Release 0: Practice Using Modules

# Some modules already exist in Ruby. Some of them are included with 
# the language; others must be loaded, or 'required'.

# Let's require a Ruby module in IRB. This module is designed to help 
# a program generate random passwords and other unique identifiers. 
# First, see if this variable evaluates to anything in IRB:

#SecureRandom => NameError: uninitialized constant SecureRandom

# This will give you an error. That's intentional, so you can see what 
# happens when Ruby doesn't know about a module you're trying to use.

# Require the module and try again:

#require 'SecureRandom' => true
#SecureRandom => SecureRandom
#SecureRandom.class => Module
#unique_identifier = SecureRandom.uuid => "775e9660-f1f2-4219-8c66-43830dfd98c4"

# We just used the module to create a 'UUID'. What is that? 
# A quick Google search will reveal some cool statistical stuff about UUIDs. 
# What sorts of things might a UUID be used for?

# We can create passwords and other randomized strings of different types 
# using methods like 'SecureRandom.base64'. You can imagine how password 
# generation might be useful if we wrote a website that assigns passwords 
# to new users who have just signed up.

# Give it a try:

#SecureRandom.base64(2) => "u54="
#SecureRandom.base64(10) => "9Hk7qH5DoM6l6Q=="
#SecureRandom.base64(50) => "SIeiWft/+oqaBgNCiLIuNvPlb3sn4k/QxRRJCfSjjDh8KVcoQSfWLTxjia5HNwg/6rQ="

# Another useful module is the Math module. You can see that 
# it's already loaded, if you check:

#Math => Math

# We can use it to check the square root of an integer with 'Math.sqrt':

#Math.sqrt(4) => => 2.0

# We can ask just about any module which of its methods are intended to 
# be called with the 'ModuleName.method_name' syntax. See for yourself:

# Math.singleton_methods => [:atan2, :cos, :sin, :tan, :acos, :asin, :atan, :cosh, :sinh, :tanh, :acosh, :asinh, :atanh, :exp, :log, :log2, :log10, :sqrt, :cbrt, :frexp, :ldexp, :hypot, :erf, :erfc, :gamma, :lgamma]
# SecureRandom.singleton_methods => [:gen_random, :hex, :random_number, :random_bytes, :base64, :urlsafe_base64, :uuid]

# Call Method with a Module:

# ModuleName.method_name


# Release 1: Write a Simple Module

# Pseudocode for Modules
# 1. declare your module

# module Name
  # we'll put some methods here soon, but this code is fine for now!
# end

# 2. require, or load your module
 
# require_relative 'name'
# Name.method_name

# 3. define your method

# module Name
#	def self.what_is_action(direct_object_article)
#		direct_object_article + "whatever we want"
#	end
#end

# 3. add methods to your module

# 4. add driver code underneath your module declaration
# that calls both of your module methods
# Notice the slight difference in syntax from the way we've added 
# instance methods to classes: the methods of standalone modules must 
# be defined on the 'self' keyword.

module Shout
# declare your module

	#def self.yell_angrily(words)
	#	words + "!!!" + " :("
	#end

	#def self.yelling_happily(words)
	#	words + "!" + " :D"
	#end
	# add a yelling_happily method to the module

	def shout(words, punctuation, emoji)
		words + punctuation + emoji
	end
	# mixin version of module
end

class Angry
	include Shout
end

class Happy
	include Shout
end

#require_relative 'shout' => true
#Shout.singleton_methods => []
# load the module

# p Shout.yell_angrily("coding is f*cking great")
# p Shout.yelling_happily("coding is f*cking great")
# add driver code underneath your module 

angry = Angry.new
p angry.shout("I f*cking hate coding", "!!!", " >(")

happy = Happy.new
p happy.shout("I f*cking love coding", "!", " ;)")

# Release 3: Convert a Standalone Module to a Mixin

# 1. Comment out the old code in shout.rb, and make a 
# mixin version of the Shout module instead. 
# 2. Write two classes representing anything that might shout, 
# and include the Shout module in those classes.
# 3. Test your work by adding driver code at the bottom of the 
# file that instantiates instances of your classes and calls 
# the two module methods on each instance.
