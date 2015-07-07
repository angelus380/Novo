
def no_odds (values)
	#new_value = values.select do |var| "blablabla"
		values.select do |var|
		var.even?
	end
	#new_value
end


list= [1,2,3,4,5,6,7,8]

puts no_odds(list)

#something.select =! something.reject
#something.even =! something.odd