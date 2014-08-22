require 'debugger'

def lightswitches
debugger

	lights = []
	


	10.times { lights << 'OFF' }

	until trip > 10
		trip = 1
		lights.each_index do |i|

		if lights[(i + 1) * trip] == 'OFF'
			lights[(i + 1) * trip] = 'ON'

		else

			lights[(i + 1) * trip] = 'OFF'

		end

	end

	trip += 1
end
	lights[0] = 'ON'
	lights
	# OR

	# yields the position of 'ON' switches

	on_switches = []
	
	lights.each_index do |i|

		if lights[i] == 'ON'
			on_switches << i
		end

	end

	on_switches

end

p lightswitches
