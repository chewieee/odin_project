#Basic Ruby - Building Blocks Project 1: Caesar Cipher

# Implement a caesar cipher that takes in a string and the 
# shift factor and then outputs the modified string.

# Quick Tips
# You will need to remember how to convert a string into a number
# Don't forget to wrap from z to a
# Don't forget to keep them the same case 

# Works for any number as offset!

def caesar_cipher(string, offset=0)

	result = ''


	string.each_byte do |b|
		result << shifter(b, offset).chr
	end

result

end


def shifter(byte, offset)
	low = (97..122)
	caps = (65..90)

	# for capital letters
	if caps.include?(byte) && offset > 26
		if byte + (offset%26) > 90
			return byte + (offset%26) - 26
		else
			return byte + (offset%26)
		end
	elsif caps.include?(byte)
		if byte + offset > 90
			return (byte + offset) - 26
		else
			byte + offset
		end

	# for lowercase letters
	elsif low.include?(byte) && offset > 26
		if byte + (offset%26) > 122
			return byte + (offset%26) - 26
		else
			return byte + (offset%26)
		end
	elsif low.include?(byte)
		if byte + offset > 122
			return (byte + offset) - 26
		else
			byte + offset
		end

	# for everything else
	else
		return byte
	end
end

puts "Input string:"
string = gets.chomp
puts "How much would you like to shift it?"
offset = gets.chomp.to_i
puts ""
puts "Caesar Cipher says:"
p caesar_cipher(string, offset)
