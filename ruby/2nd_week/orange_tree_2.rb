class Tree
	
	def initialize
		@age = 0
		@height = 0
		@survive = 100
		@dead = false
		

		one_year_passes!
	end

	def one_year_passes!
		until @dead == true
			grow_old
			status!
		end
	  # TODO: age the tree of one year
	  # TODO: check if the tree has survived
	  # TODO: if so, make the tree height grow
	  # TODO: if so, make the tree grow fruits
	end

	def grow_old
		dead?
	end

	def add_age
		@age +=1
		if @age ==10
			@dead = true
		end		
	end

	def add_height
		if @age <11
			@height +=1
		end
	end

	def add_fruit
		

	end

	def dead?
		if @dead == false
			add_age
			add_height
			#add_survival
		end
	end

	def status!
		p "A: #{@age} H: #{@height} Dead? #{@dead}"
	end
end

orange_tree = Tree.new

#You should be able to measure the tree
#Each year, the tree should age (it becomes older and taller, and eventually dies).
#A tree grows 1 meter per year up to 10 years old. Then it stops.
#Before it is 50 years old, the probability of dying as a year passes is zero.
#After it is 50 years old, the probability of dying increases
#No tree can live more than 100 years
#A tree will produce 100 fruits a year once it is 5 years old
#A tree will produce 200 fruits a year between 10 and 15 years old
#A tree will not produce any fruits after that
#You should be able to pick a fruit from the tree
#You should be able to count how many fruits on the tree there are left
#Every year, fruits which were not picked just fall off
