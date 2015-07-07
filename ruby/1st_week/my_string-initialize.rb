class MyString
	def initialize(value)
		@string = value
	end

	def size
		@string.size
	end
end

str=MyString.new("hello")
puts str.size



class Ghost
	def inicialize
		@color = ["white", "red", "yellow", "purple"].sample
	end

	def color
		@color
	end
end

#ghost = Ghost.new
#puts ghost.color