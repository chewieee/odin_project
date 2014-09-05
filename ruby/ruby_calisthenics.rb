# VCS Ruby Calisthenics

# 1. Power

def power(base, exponent)
	result = 1

	exponent.times do 
		result *= base
	end

	result

end

p power(3, 4)


# 2. Factorial

def factorial(num)

	result = 1

	(1..num).each do |number|
		result *= number
	end

	result
end

p factorial(5)


# 3. Uniques 

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


# 4. Combinations

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


# 5. Prime

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


# 6. Rectangle Overlap

class Rect
  attr_reader :lower_left, :upper_right
  def initialize(points)
    @lower_left = Point.new(points[0])
    @upper_right = Point.new(points[1])
  end
 
  def overlap?(rect)
    left_edge < rect.right_edge &&
      right_edge > rect.left_edge &&
      top_edge > rect.bottom_edge &&
      bottom_edge < rect.top_edge
  end
 
  def left_edge
    lower_left.x
  end
 
  def right_edge
    upper_right.x
  end
 
  def top_edge
    upper_right.y
  end
 
  def bottom_edge
    lower_left.y
  end
end
 
class Point
  attr_reader :x, :y
  def initialize(vector)
    @x = vector[0]
    @y = vector[1]
  end
end
 
def overlap(r1, r2)
  Rect.new(r1).overlap?(Rect.new(r2))
end
 
p overlap([[0,0],[3,3]], [[1,1],[4,6]])
p overlap([[0,0],[1,4]], [[1,1],[3,2]])


# 7. Counting Game - Advanced Option

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


