# Chris Pine Chapter 9 - Orange Tree

class OrangeTree

	def initialize
		@height = 0
		@age = 0
		@orangeCount = 0

	end

	def height
		@height
	end

	def countTheOranges
		@orangeCount
	end

	def pickAnOrange
		if @orangeCount > 1
			@orangeCount - 1
		puts 'That was delicious!'
	else
		puts 'There are no more oranges to pick this year'
	end


	private

	def oneYearPasses
		@age + 1

	end


end