def make_acronym(name)

	if !name.is_a? String
		"Not a String"
	else
		name.split.map do |letter|
			letter[0].upcase
		end.join
	end
end

p make_acronym("hello world")
p make_acronym(23)
p make_acronym("a23")
p make_acronym("")