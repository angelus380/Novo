
class Email
	
	def initialize (subject, hash)
		@date = hash[:date]
		@from = hash[:from]
		@subject = subject	
	end

	def subject
		@subject
	end

	def date
		@date
	end

	def from
		@from
	end
end

email=Email.new(
	"Keep on coding! :)",
	{:date => "2014-12-01",
		:from => "Ferdous"}
)
puts "Date:  #{email.date}"
puts "From:  #{email.from}"
puts "Subj:  #{email.subject}"