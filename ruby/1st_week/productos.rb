products = [
	{ name: "Beer", price: 3},
	{ name: "Chips", price: 1},
	{ name: "Water", price: 1}
]

total = 0

products.each do |product|
	total += product[:price]
end

puts total