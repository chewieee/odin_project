# Chris Pine Chaper 1 Things to Try

@hours_in_year = 365 * 24

@minutes_in_decade = (@hours_in_year * 10) * 60

def how_many_seconds_old?(arg)
	
	hours = arg * @hours_in_year

	# minutes variable included in case of 
	# curiosity of how many minutes old
	minutes = hours * 60

	seconds = minutes * 60

	return seconds 
	
end 

# tougher question

# "If I am 1031 millions seconds old, how old am I?"

# Reverse above method, answer = 32

def how_old_from_seconds?(arg)

	minutes = arg / 60

	hours = minutes / 60

	days = hours / 24

	years = days / 365

	# or 
	# years = (((arg / 60) / 60) / 24) / 365

	return years

end