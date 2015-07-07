
ar = ["one", "two", "three"]

def html(array)
	text = "<ul>\n"
	array.each do |item|
		text << "<li>\n#{item}\n</li>\n"
	end
	text << "</ul>"
end

puts html(ar)

#output = html(ARGV)
#p output