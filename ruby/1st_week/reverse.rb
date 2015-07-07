class Reverser
	def initialize(data)
		@data = data
	end

	def reverse
		if @data.is_a?(Fixnum)
		#if @data.class == Fixnum
			@data.to_s.reverse.to_i
		elsif @data.is_a?(String)
		#elsif @data.class == String
			@data.reverse			
		else
			@data
		end
	end
end

puts "Give me an string, number or array!"
data=gets.chomp

puts "Is it a string, a number or an array?"
value=gets.chomp
	if value == "string"
		data = data.to_s
	elsif value == "number"
		data = data.to_i
	#elsif value == "array"
		#data = Hash.new(data)
	else
		p "wrong number"
	end

reverser = Reverser.new(data)
p reverser.reverse