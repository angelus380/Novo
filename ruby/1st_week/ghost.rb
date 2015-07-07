class Ghost

	def color
		["white", "red", "yellow", "purple"].sample
		#colors=["white", "red", "yellow", "purple"]
		#p colors [rand(colors.size)]
		#"Ghost is #{colors [rand(colors.size)]}"
	end

end

ghost = Ghost.new

p "Ghost is #{ghost.color}"