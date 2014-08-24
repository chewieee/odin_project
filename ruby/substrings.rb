#Basic Ruby - Building Blocks Project 3: Substrings

# Implement a method #substrings that takes a word as the first argument
# and then an array of valid substrings (your dictionary) as the second
# argument. It should return a hash listing each substring (case 
# insensitive) that was found in the original string and how many times
# it was found. 

# Quick Tips
# Recall how to turn string into arrays and arrays into strings

def substrings(string, dictionary)

	results = {}
	count = 0
	words = string.downcase.split(' ')

	dictionary.each do |search_word|
		words.each do |word|
			count += 1 if word.include?(search_word)
		end

		results[search_word] = count if count > 0
		count = 0
	end

	results

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("below", dictionary)

# Make sure your method can handle multiple words:

p substrings("Howdy partner, sit down! How's it going?", dictionary)
