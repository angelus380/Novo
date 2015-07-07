
def head(number)
	number.first
	#number[0]
end

def last(number)
	number.last
	#number[-1]
end

def tail(number)
	number.drop(1)
	#number[1..-1]
end

def init(number)
	number.take(number.size-1)
end


number = [1,2,3,4,5]

p head(number)
p last(number)
p tail(number)
p init(number)
