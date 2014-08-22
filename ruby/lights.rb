# The Viking Code School - Interview Coding Challenge 2

def light_switches

		lights = []
		100.times { lights << 'ON' } 

		# lights start ON since first trip turns all lights on.
		# trip variable set to 2 appropriately.
		trip = 2 


		until trip > 100
			lights.each_index do |i|
				
				# skips first iteration since first light switch always stays on.
				next if i == 0 

				if (i * trip) <= lights.size

					# 1 subtracted from index to align array indexing with light position.

					if lights[(i * trip) - 1] == 'ON'
						lights[(i * trip) - 1] = 'OFF'
					else
						lights[(i * trip) - 1] = 'ON'
					end

				else
					next
				end
			end

			trip += 1
		end

	light_positions = []

	lights.each_index do |i|

		if lights[i] == 'ON'
			light_positions << i + 1
		end

	end

	light_positions

	# return array of lights with on/off 
	# p lights
end

p light_switches
# => [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
