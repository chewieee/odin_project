# Chris Pine Chapter 2 Things to Try

# Program that asks for First, Middle, Last name and greets user

# If statement to handle no middle name

puts "Hi, what's your first name?"
first = gets.chomp

puts "Do you have a middle name?"
middle = gets.chomp

puts "And finally, your last name?"
last = gets.chomp

if ["no", "nope", "nah"].include?(middle.downcase)
	puts "Hello, #{first} #{last}!"
else 
	puts "Hello, #{first} #{middle} #{last}!"
end


# Asks for number and suggests bigger number is better

puts "What is your favorite number?"
favorite = gets.chomp

new_fav = favorite.to_i + 1

puts "That's cool and all, but #{new_fav} is bigger and better."




