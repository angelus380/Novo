class Car

	def start_engine
		"this engine has started"
	end

	def shift_gear(gear)
		"Car is now in gear #{gear}"
	end

	def to_s
		"this is a car"
	end
end

my_car = Car.new

puts my_car.to_s

puts my_car.start_engine

puts my_car.shift_gear(4)