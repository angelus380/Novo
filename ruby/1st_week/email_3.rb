class Email
	attr_reader :subject, :date, :from

	def initialize (subject, hash)
		@subject = subject
		@from = hash[:from]
		@date = hash[:date]
	end
end

class Mailbox
	def initialize (name, hmail)
		@hmail = hmail
	end

	def emails
		@hmail
	end
end

emails = [
	Email.new(
		"Homework this week",
		{ :date => "2014", :from => "Ferdous"}
	),
	Email.new(
		"This is real!",
		{ :date => "2015", :from => "Tarsa"}
	),
	Email.new(
		"Future mail",
		{ :date => "2016", :from => "Abit"}
	)
]
mailbox = Mailbox.new("Ruby Study Group", emails)

mailbox.emails.each do |email|
	puts "Date:  #{email.date}"
	puts "From:  #{email.from}"
	puts "Subj:  #{email.subject}"
end
