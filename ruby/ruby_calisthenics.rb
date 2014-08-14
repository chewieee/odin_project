# VCS Ruby Calisthenics

# 1. Power

def power(base, exponent)
	sum = 1
	
	exponent.times do
		sum *= base
	end

	sum
end

p power(3, 4)

# 2. Factorial

def factorial(num)

	(1..num).inject do |sum, int|
		sum * int
	end
end

p factorial(5)

# 3. Uniques

def uniques(arg)
	uniques = []

	arg.each do |item|
		if uniques.include?(item)
			next
		else
			uniques << item
		end
	end

	uniques	

end

p uniques([1,5,"frog", 2, 1, 3, "frog"])

# 4. Combinations

def combinations(array1, array2)
	combos = []

	array1.each do |first|
		array2.each do |sec|
			combos << first + sec
		end
	end

	combos

end

p combinations(["on", "in"], ["to", "rope"])

# 5. Primes

def is_prime?(num)

	(2...num).each do |x|
		if (num % x) == 0
			return false
		end
	end
	return true
end

p is_prime?(7)
p is_prime?(14)

# 6. Rectangle Overlap


# The Counting Game

person1 says 1
person2 says 2
person3 says 3
person4 says 4
person5 says 5
person6 says 6
person7 says 7
person6 says 8
person5 says 9
person4 says 10
person3 says 11
person2 says 12
person1 says 13
person10 says 14
person1 says 15
person2 says 16
person3 says 17
person4 says 18
person5 says 19
person6 says 20
person7 says 21
person8 says 22
person9 says 23
person10 says 24
person1 says 25


playerHash = {
	"1" => 1,
	"2" => 2,
	"3" => 3,
	"4" => 4,
	"5" => 5,
	"6" => 6,
	"7" => 7,
	"8" => nil,
	"9" => nil,
	"10" => nil
}


count = 1
person = 1

until count == 100

players = ["player1", "player2", "player3"]

(1..100).each do |num|

	if num 
	players = ["player1", "player2", "player3"]
	puts "Person __ said #{num}"


end



PROGRAM CountingChallenge
	You have 10 players
	You have the numbers 1 to 100
	EACH number is counted off by a player up to 100
	The players count off in ascending order
		IF the number is divisible by 7
			The order of the players counting off is reversed
		END
























