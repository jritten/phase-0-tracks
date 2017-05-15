# Challenge 5.3: Iteration
# Release 0: Explore Blocks

def say_hello
	student1 = "Adam"
	student2 = "Connor"
	student3 = "Jen"
	student4 = "Lindsay"

	p "Status: before"

	puts "Hello students! I wanted to welcome all of my new students to class!"
	yield(student1, student2, student3, student4)

	p "Status: after"

end

say_hello { |student1, student2, student3, student4| puts "Great to see you, #{student1}, #{student2}, #{student3}, and #{student4}" } 

# Release 1: Use .each, .map, & .map! 
# Declare an Array
# Use .each to Modify Array Data

raw_scores = [99, 96, 95, 95, 91, 85]
curved_scores = []

puts "Non Curved Scores( before using .each): "
p raw_scores

raw_scores.each do |score|
	curved_scores << score.next
end

puts "Curved Scores(after using .each): "
p curved_scores

# Use .map to Modify Array Data

raw_scores = [99, 96, 95, 95, 91, 85]
puts "Original Scores (before using .map!): "
p raw_scores

raw_scores.map! do |score|
	puts score
	score.next
end

puts "After using .map call: "
p raw_scores

# Declare a Hash
# Used .each to Modify Hash Data

state_capitals = {
	"missouri" => "Jefferson City",
	"louisiana" => "Baton Rouge",
	"massachusetts" => "Boston",
	"new_hampshire" => "Concord",
	"maine" => "Augusta",
	"florida" => "Tallahassee",
	"california" => "Sacramento"
}

puts "Original hash (before using .each): "
p state_capitals

puts "(After using .each method): "
state_capitals.each do |state, capital|
	puts "#{capital} is the capital of #{state}."
end

# Release 2: Use the Documentation

# Example # 1

letter_grades = ["a", "b", "b", "c", "d"]
puts "All Grades: "
p letter_grades
letter_grades.delete("b")
puts "All Grades (minus b's): "
p letter_grades

# Example # 2

test_scores = [99, 98, 97, 96, 95, 95, 88, 87, 85]
puts "Original Test Scores: "
p test_scores
test_scores.select! { |num| num.even? }
puts "Even Test Scores: "
p test_scores

# Example # 3

scores = [97, 95, 93, 92, 89, 88, 86, 85, 82, 81]
puts "Original Scores: "
p scores
scores.delete_if { |score| score < 90 }
puts "All Scores Better than 90%: "
p scores


# Release 1: Use .each, .map, and .map!

cars_maufacturers = [
  "General Motors",
  "Ford",
  "Dodge",
  "Renault",
  "Aston Martin"
]

motorcycles = {
  "Japan" => "Yamaha",
  "the UK" => "Triumph",
  "the US" => "Buell"
}

cars_maufacturers.each do |car_makers|
  puts "What do you think about cars made by #{car_makers}."
end

motorcycles.each do |build_local, company|
  puts "The company #{company} is manufactured in #{build_local}."
end

# crappy_motorcycles = motorcycles.map {|build_local, company| build_local <<
# " but crappy" }

cars_maufacturers.map! {|car_makers| car_makers << " but crappy"}

p cars_maufacturers

# Release 2: Use the Documentation

# 1: Array
example_array = [1, 25, 36, 14, 32, 3, 7, 2]
example_array.delete_if{|integers| integers < 10}
p example_array

example_array = [1, 25, 36, 14, 32, 3, 7, 2]
example_array.delete_at(1)
p example_array

# 1: Hash

example_hash = {
  "a" => 1,
  "b" => 2,
  "c" => 3
}
example_hash.delete_if{|key| key > "b"}
p example_hash

example_hash = {
  "a" => 1,
  "b" => 2,
  "c" => 3
}
example_hash.delete_if{|key, value| value <= 2}
p example_hash

# 2: Array

example_array = [1, 25, 36, 14, 32, 3, 7, 2]
new_array = [example_array.select{ |num| num.even? }]
p new_array

example_array = [1, 25, 36, 14, 32, 3, 7, 2]
new_array = [example_array.select{ |num| num > 10 }]
p new_array

# 2: Hash

example_hash = {
  "a" => 1,
  "b" => 2,
  "c" => 3
}
new_hash = example_hash.select{|key, value| value > 2}
p new_hash

example_hash = {
  "a" => 1,
  "b" => 2,
  "c" => 3
}
new_hash = example_hash.select{|key| key < "b"}
p new_hash


# 3: Array

example_array = [1, 25, 36, 14, 32, 3, 7, 2]
new_array = [example_array.take_while{ |num| num < 30 }]
p new_array

# 4

example_array = [1, 25, 36, 14, 36, 32, 3, 7, 2]
example_array.delete(36)
p example_array

example_array = [1, 25, 36, 14, 36, 32, 3, 7, 2]
example_array.delete_at(3)
p example_array
