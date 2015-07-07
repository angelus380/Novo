
#morning 6h-12h
#afternoon 12h-18h
#Evenning 18h-24h
#night 24h-6h
require 'date'

hour = DateTime.now.hour
minutes = DateTime.now.minute

def time(hour, minutes)
	if hour.between?(6,12)
		p "morning"
	elsif hour.between?(13,18)
		p "afeternoon"
	elsif hour.between?(19,24)
		p "evening"
	else
		p "night"
	end
end


def time(hour, minutes)
	if hour>24 || minutes>59
		p "Incorrect hour input, try again!"
	elsif hour>18
		p "#{hour}:#{minutes} afternoon"
	elsif hour>12
		p "#{hour}:#{minutes} evening"
	elsif hour>6
		p "#{hour}:#{minutes} morning"
	else
		p "#{hour}:#{minutes} night"
	end
end


puts time(hour, minutes)