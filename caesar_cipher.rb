# Caesar Cipher

require 'debugger'
=begin
def caesar_cipher(string, shift)

	string.split(" ").map do |word|
		shifter(word, shift)
	end.join(" ")

end

def shifter(word, shifter)
	
	bytes = []
	word.each_byte do |l|
		caps = (65..90).to_a
		low = (97..122).to_a

		if low.include?(l)
			if shifter > 26
				if l + (shifter%26) > 122
					bytes << l + (shift%26) - 26
				end
			elsif l + shifter > 122
				bytes << (l + shifter) - 26
			else
				bytes << l + shifter
			end

		elsif caps.include?(l)
			if shifter > 26
				if l + (shifter%26) > 90
					bytes << l + (shifter%26) - 26
				end
			elsif (l + shifter) > 90
				bytes << (l + shifter) - 26
			else
				bytes << l + shifter
			end
		
		else
		bytes << l
	end
	end

	bytes.map do |b|
		b.chr
	end.join('')

end
=end


def caesar_cipher(string, shift)
	string.each_byte do |b|
		low = (97..122)
		caps = (65..90)

		if caps.include?(b) && shift > 26
			x + (shift%26) > 90 ? x + (shift%26) - 26 : (x + shift) - 26

		elsif low.include?(b) && shift > 26
			x + (shift%26) > 122 ? x + (shift%26) - 26 : (x + shift) - 26

		elsif caps.include?(b) || low.include?(b)
			x + shift

		else
			x
		end

	end




end
