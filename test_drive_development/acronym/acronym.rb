def make_acronym(str)

	return "Not a string" unless str.is_a? String
	return "Not letters" if str.count("a-zA-Z ") != str.size
	str.split.map { |word| word[0].upcase}.join

end