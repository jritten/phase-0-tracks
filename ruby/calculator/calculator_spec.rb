# Challenge 6.5: Testing a Class with RSpec

# Introduction to Testing

# In professional environments, developers use testing frameworks to 
# make sure that updating their code has not caused any problems. Testing 
# frameworks are designed to run small bits of code at a time, checking to 
# ensure that each component of a program still works as expected. Tests 
# often involve an expectation or assertion, as in, "Expect double(2) to 
# equal 4." Each test will pass or fail based on whether a code snippet 
# evaluated to the expected value. A programmer might use a simple terminal 
# command to run hundreds or even thousands of tests. Many companies have 
# testing frameworks set up to automatically run tests anytime new code is 
# committed to a repository.

# Test-Driven Development

# test-driven development, or TDD, which is a popular method for writing code. 
# When using TDD, developers repeat this process over and over again:

# choose a feature to work on
# write a test that will verify that a certain component of the new feature is working
# watch it fail
# add code
# watch it pass
# commit their code

# This process of repeatedly starting with a 'failing test' and then 
# making it pass is sometimes referred to as moving from "red to green."


# Release 0: Run Some RSpec Tests

# we will use the popular testing framework RSpec to test Ruby code
# RSpec Tests Format:
# a 'describe' block for each group of tests
  # an 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT> 
    # (what we think code will evalaluate to for each 'it' block
    # return the value of each test
# run 'rspec -fd name_spec.rb' in Terminal

#describe Calculator do 
#  it "adds two integers" do
#  end

#  it "subtracts two integers" do
#  end

#  it "multiplies two integers" do
#  end 
#end
# structure for three separate tests we want to run to test separate features
# tests are kept in a separate file from classes

# our calculator should ...
# add two integers and return an integer
# subtract two integers and return an integer
# multiply two integers and return an integer

# RSpec
# 'describe' block for each group of tests  
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>
    # return the value of each test
# run 'rspec -fd calculator_spec.rb' in Terminal

require_relative 'calculator'
# require, or load, the module

describe Calculator do
  let(:calculator) { Calculator.new }

  it "adds two integers" do
    # calculator = Calculator.new
    expect(calculator.add(3,4)).to eq 7
  end

  it "subtracts two integers" do
    # calculator = Calculator.new
    expect(calculator.subtract(7,1)).to eq 6
  end

  it "multiplies two integers" do
    # calculator = Calculator.new
    expect(calculator.multiply(2,3)).to eq 6
  end

  it "divides two integers" do
    expect(calculator.divide(9,3)).to eq 3
  end
    # add a test for divide method
    # run test to make sure it fails
    # add code (to calculator.rb) to make the test pass
end


# Release 1: Write an RSpec Test

# Add a test for a divide method.
# Run your test to make sure that it fails.
# Add the Ruby code needed to make the test pass.


# Release 2: Research on Your Own

# Are there any handy RSpec cheat sheets out there? 
# http://cheatrags.com/rspec-matchers
# https://thoughtbot.com/upcase/test-driven-rails-resources/rspec.pdf
# https://www.anchor.com.au/wp-content/uploads/rspec_cheatsheet_attributed.pdf
# http://www.rubypigeon.com/posts/rspec-expectations-cheat-sheet/
# What observations can you make from skimming them?
# There are various rspec method structures to test each part of various types of methods' code.
# Where is the RSpec documentation?
# 'object predicates', 'block predicates'
# What other RSpec matchers are available aside from 'eq'? 
# 'have', 'be', 'match', 'include'
# Can you find any free RSpec tutorials or in-depth resources 
# that might be helpful to bookmark?
