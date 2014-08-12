# Chris Pine Chapter 9 - Orange Tree

class OrangeTree

	def initialize
		@height = 0
		@age = 0
		@orangeCount = 0

		puts 'An orange tree has been planted.'

	end

	def height
		puts "The tree is #{@height} feet tall."
	end

	def water_the_tree
		@height += 2
		puts 'You watered the tree, it looks well hydrated.'
		one_year_passes
	end

	def trim_the_tree
		if @height < 10
			puts 'No need, time to let it grow bigger.'
			one_year_passes
		else
			@height -= 5
			puts 'You took a bit off the top, the tree is nicely trimmed.'
			one_year_passes
		end
	end


	def count_the_oranges
		puts "The tree has #{@orangeCount} oranges."
	end

	def pick_an_orange
		if @orangeCount > 1
			@orangeCount -= 1
		puts 'You picked an orange, it was delicious!'
		else
		puts 'There are no oranges to pick this year'
		end
	end


	private

	def one_year_passes
		@age += 1

		if dead?
			puts 'The orange tree has died.'
			exit
		end

		@orangeCount = 0

		if @age > 2
			@orangeCount = @age * 3

		elsif @age > 5 && @age < 10
			@orangeCount = @age * 8

		else
			@orangeCount += 4
		end

		@height += 3
		puts 'The tree has grown taller.'

	end

	def dead?
		@age > 10
	end

end


tree = OrangeTree.new
tree.height
tree.water_the_tree
tree.water_the_tree
tree.height
tree.count_the_oranges
puts ''
tree.water_the_tree
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.trim_the_tree
tree.water_the_tree
puts ''
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.water_the_tree
tree.pick_an_orange
tree.count_the_oranges
tree.trim_the_tree
tree.height
puts ''
tree.count_the_oranges
tree.pick_an_orange
tree.pick_an_orange
tree.water_the_tree
tree.count_the_oranges
tree.pick_an_orange
tree.count_the_oranges
puts ''
tree.water_the_tree
tree.height
tree.count_the_oranges 
puts ''
tree.height
tree.water_the_tree
tree.pick_an_orange
tree.pick_an_orange
tree.trim_the_tree
