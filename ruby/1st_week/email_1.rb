
class Email
	attr_reader :date, :from, :subject

	def initialize (date, from, subject)
		@date = date
		@from = from
		@subject = subject
	end
end

email=Email.new(
	"11-12-2015",
	"Super-empresa",
	"Está contratado!"
	)

puts "Date:  #{email.date}"
puts "From:  #{email.from}"
puts "Subj:  #{email.subject}"