list = ARGV

list_cap =[]

list.each do |item|
	list_cap << item.capitalize
end

puts list_cap