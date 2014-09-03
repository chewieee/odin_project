# VCS Ruby Calisthenics
=begin
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


=end

def power(base, exponent)
	result = 1

	exponent.times do 
		result *= base
	end

	result

end

p power(3, 4)


def factorial(num)

	result = 1

	(1..num).each do |number|
		result *= number
	end

	result
end

p factorial(5)


def uniques(arg)

	unique_array = []

	arg.each do |item|
		if unique_array.include?(item)
			next
		else
			unique_array << item
		end
	end
	unique_array
end

p uniques([1, 5, "frog", 2, 1, 3, "frog"])


def combinations(arg1, arg2)
	combos = []

	arg1.each do |word1|
		arg2.each do |word2|
			combos << word1 + word2
		end
	end

	combos
end

p combinations(["on","in"], ["to","rope"])

def is_prime?(arg)

	(2...arg).each do |num|
		if arg % num == 0
			return false
		else
			return true
		end
	end
end


p is_prime?(7)
p is_prime?(14)




class Person
	def initialize(number)
		@number = number
	end

	def say(count)
		puts "Person #{@number} says #{count}"
	end
end

def counting_game(players, count_to)
	people = players.times.map {|x| Person.new(x+1)}

	(1..count_to).each do |x|
		person = people.shift
		person.say(x)

		if x % 7 == 0
			people = people.reverse
		end

		people.push(person)

		if x % 11 == 0
			people.push(people.shift)
		end
	end
end

p counting_game(10, 100)






















