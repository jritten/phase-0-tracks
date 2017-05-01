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
