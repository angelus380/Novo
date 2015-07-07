
require "prime"
def number_property(number)
	# [(number % 10 ==0), number.even?, Prime.prime?(number)]
	a =[]
	a << (number % 10 ==0)
	a << number.even?
	a << Prime.prime?(number)
end

p number_property(20)


#p rand(5).round()