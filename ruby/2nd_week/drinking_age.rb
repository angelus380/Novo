
age = ARGV[0]

if age == nil
	"error"
elsif age.to_i < 18
	puts "not allowed"
else
	puts "allowed"
end