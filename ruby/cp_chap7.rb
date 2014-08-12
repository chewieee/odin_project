# Chris Pine Chapter 7 Things to Try

# Typing as many words as we want into an array, returning it sorted.

words = []

puts "Type as many words as you want, one at a time. To end, just hit enter."

input = gets.chomp

until input == ''
	
	words << input
	input = gets.chomp
	
end

p words.sort




