def reaction(input)
	if input.strip.empty?
		"Fine, be that way"
	elsif input == input.upcase && input != input.downcase
		"Chill out"
	elsif input.end_with?("?")
		"Sure"
	else
		"whatever!"
	end
end

loop do
	p ">"
	conversation = gets.chomp
	if conversation.downcase == "bye"
		break
	end
	puts reaction(conversation)
end