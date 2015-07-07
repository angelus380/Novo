list = ["jo", "nelson", "jurie"]
list_cap =[]

list.each do |item|
	list_cap << item.capitalize
end

puts list_cap

list = ["mo", "belson", "turie"]

new_list = list.map do |item|
	item.capitalize
end

p new_list