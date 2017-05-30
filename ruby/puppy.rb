# 6.1 Introduction to Classes

# https://repl.it/IX6F/1

# Release 0: Design a Class

# SPECIES ------------------------
# Eyelashus Adorableus

# CHARACTERISTICS ----------------
# Eyelash length: varies
# Friendly: yes
# Eye count: 8
# Name: varies
# Color: varies

# BEHAVIOR -----------------------
# Jump
# Hug
# Scamper

# How might you design a Puppy class? 
# What sorts of characteristics and behavior might a Puppy class involve? 
# Using a format similar to the one we used for Eyelashus Adorableus, 
# come up with some characteristics and behavior for a Puppy class. 
# Use comments to add your class design.

# SPECIES:
# Puppy

# CHARACTERISTICS:
# Fur Color: varies
# Friendly: varies
# Name: varies
# Color: varies

# BEHAVIOR:
# Sit
# Shake
# Roll Over
# Fetch


# Release 1: Declare Your Class and 
# Create an Instance in IRB

# In IRB, declare your Puppy class:

class Puppy
end => nil

# Ask your class what methods are available:
Puppy.methods => [:new, :allocate, :superclass, :<=>, :module_exec, 
:class_exec, :<=, :>=, :==, :===, :include?, :included_modules, :ancestors, 
:name, :public_instance_methods, :instance_methods, :private_instance_methods, 
:protected_instance_methods, :const_get, :constants, :const_defined?, :const_set, 
:class_variables, :class_variable_get, :remove_class_variable, :class_variable_defined?, 
:class_variable_set, :private_constant, :public_constant, :singleton_class?, 
:deprecate_constant, :freeze, :inspect, :module_eval, :const_missing, :prepend, 
:method_defined?, :class_eval, :public_method_defined?, :private_method_defined?, 
:<, :public_class_method, :>, :protected_method_defined?, :private_class_method, 
:to_s, :autoload, :autoload?, :instance_method, :public_instance_method, :include, 
:instance_of?, :public_send, :instance_variable_get, :instance_variable_set, 
:instance_variable_defined?, :remove_instance_variable, :private_methods, :kind_of?, 
:instance_variables, :tap, :is_a?, :extend, :define_singleton_method, :to_enum, 
:enum_for, :=~, :!~, :eql?, :respond_to?, :display, :send, :object_id, :method, 
:public_method, :singleton_method, :nil?, :hash, :class, :singleton_class, :clone, 
:dup, :itself, :taint, :tainted?, :untaint, :untrust, :trust, :untrusted?, :methods, 
:protected_methods, :frozen?, :public_methods, :singleton_methods, :!, :!=, :__send__, 
:equal?, :instance_eval, :instance_exec, :__id__]

# Create a new instance of a Puppy and save it in a variable:

duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new

# We haven't taught these pups many tricks, and yet they can 
# respond to quite a few method calls already. Run each line 
# separately, making guesses as to what the response will look like.

spot.class => Puppy
duchess == fido => false
fido.instance_of?(Array) => false
fido.instance_of?(Puppy)=> true
spot.play_dead => undefined method 'play_dead' for #<Puppy:0x007f83f50255c8>


# Release 2: Practice Using Class Methods and Instance

# Run this code in IRB to create a new string using a class method:

str = String.new => ""
str.length => 0
str.empty? => true
str += "huh." => "huh."

# In the past, we have often made new instances of the 
# String class by declaring them literally:

str = "some string"

# ... but String.new will work too, and even takes an argument 
# for what characters you would like to put in the string. Try it:

greeting = String.new("hello") => "hello"
greeting.length => 5
greeting.upcase => "HELLO"