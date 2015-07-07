require "awesome_print"

product = {
	name: "stuff",
	color: "blue",
	status: "new",
	number: 123
}

ap product[:status]
puts product[:status]