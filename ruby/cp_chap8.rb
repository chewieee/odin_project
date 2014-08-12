# Chris Pine Chapter 8 Things to Try

# Figure out why it's throwing "NameError: undefined local variable or method
# 'number' for main:Object" error. There is no 'number' method or variable.


def englishNumber(arg)

	if arg < 0
		return "Please enter a number that isn't negative."
	end

	if arg == 0
		return 'zero'
	end

	numString = ''

	onesPlace = %w{one two three four five six seven eight nine}

	tensPlace = %w{ten twenty thirty fourty fifty sixty seventy eighty ninety}

	teenagers = %w{eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen}

	left = arg
	write = left/100
	left = left - write*100

	if write > 0

		hundreds = englishNumber write
		numString = numString + hundreds + ' hundred'

		if left > 0

			numString = numString + ' '

		end
	end

	write = left/10
	left = left - write*10

	if write > 0
		if ((write == 1) and (left > 0))
			numString = numString + teenagers[left-1]
			left = 0

		else
			numString = numString + tensPlace[write-1]
		end

		if left > 0
			numString = numString + '-'
		end
	end

	write = left
	left = 0

	if write > 0
		numString = numString + onesPlace[write-1]
	end

	numString
end

puts englishNumber(  0)
puts englishNumber(  9)
puts englishNumber( 10)
puts englishNumber( 11)
puts englishNumber( 17)
puts englishNumber( 32)
puts englishNumber( 88)
puts englishNumber( 99)
puts englishNumber(100)
puts englishNumber(101)
puts englishNumber(234)
puts englishNumber(3211)
puts englishNumber(999999)
puts englishNumber(1000000000000)


