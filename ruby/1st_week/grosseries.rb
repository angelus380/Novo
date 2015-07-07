shopping_list = ["Beer", "Water", "Cookies"]

shopping_list_amount = shopping_list.size

puts "You have to buy #{shopping_list_amount} items"

list_has_chips = shopping_list.include? "Chips"

puts "Chips on list? " + list_has_chips.to_s

shopping_list << "Chips"

puts "#{shopping_list.last} have been added to the list!"

single_line_list = shopping_list.join "; "
puts "Your items are the following: #{shopping_list}"

shopping_list.each do |item|
	puts " #{item} is on the list"
end

shopping_list.each_with_index do |item, index|
	puts "Position #{index.to_s}: #{item}"
end