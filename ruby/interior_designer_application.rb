# Challenge 5.2: Arrays and Hashes
# Release 1: Play with Hashes

Name = "Jenna Ritten"
Address = "77 Leroy Ave"
Email = "jritten@umich.edu"
Phone = "(810)441-3259"
Fave_Shade_of_Blue = "cerulean"
Wallpaper_Preferences = "paisley, chevron"
Ombre_is = "fierce"

puts "Interior Designer Job Application"

job_app_1 = {

	Name: "Jenna Ritten",
	Address: "77 Leroy Ave",
	Email: "jritten@umich.edu",
	Phone: "(810)441-3259",

	:"Fave Shade of Blue:" => "cerulean",

	:"Wallpaper Preferences (check any that apply):" => "paisley, chevron",
	:"Ombre is:" => "fierce"

}

#p job_app_1
job_app_1[:Name] = "Jenna Kitten"
#p job_app_1[:Name]
job_app_1[:Status] = "You're Hired!"
#p job_app_1[:Status]
p job_app_1

# What happens if you store a key in a variable, 
# then access the hash using the variable? Does it work?
# It prints the 'key' we set as the variable as the 'value',
# however, it prints the 'key' instead of the 'value'
# of the 'key'; we get :Email in place of "jritten@umich.edu"

#job_app_1[:Name] = :Email
#p job_app_1[:Name]

# What happens when try an expression like 
# your_hash[:name] + your_hash[:address] 
# (or whatever keys you used)? Does it affect the original hash?
# This does not effect our original hash without setting the 
# 'value' equal to either a new or existing 'key'.

#p job_app_1[:Name] + job_app_1[:Address]
#p job_app_1

