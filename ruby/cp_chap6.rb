# Chris Pine Chapter 6 Things to Try

# 99 Bottles of Beer

puts "Whow many bottles of beer are on the wall?"
bottles = gets.chomp.to_i

while bottles >= 2
	puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
	puts "Take one down, pass it around..."

	bottles -= 1

	puts "#{bottles} bottles of beer on the wall!"

end

puts "1 bottle of beer on the wall, 1 bottle of beer."
puts "Take one down and pass it around, go to the store and buy some more 'cause there's no more bottles of beer on the wall!"



# Deaf Grandma

	tell_grandma = nil
	byes = 0

until byes == 3

	puts "What do you want to say to Grandma?"

	tell_grandma = gets.chomp

	if tell_grandma == 'BYE'
		puts "HUH?! SPEAK UP, SONNY!"
		byes += 1
	
	elsif tell_grandma.upcase != tell_grandma
		puts 'HUH?! SPEAK UP, SONNY!'

	else
		puts "NO, NOT SINCE #{rand(22) + 1929}!"
		byes = 0
		
	end
end

puts 'OK SONNY, GOODBYE!'

# Leap Years


def leap_years(sy, ey)

	leap_years = (sy..ey).select do |year|
		if year % 100 == 0
			if year % 400 == 0
				year
			else
				next
			end
		elsif year % 4 == 0
			year
		end
	end

	 puts leap_years
end

leap_years(2000, 2500)









