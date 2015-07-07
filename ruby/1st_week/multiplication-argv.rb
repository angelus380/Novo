list = ARGV

total =1

list.each do |number|
	total *= number.to_i
end

puts total
