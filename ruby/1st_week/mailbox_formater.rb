class Email
  # your class from the last exercise
  attr_reader :subject, :date, :from

	def initialize (subject, hash)
		@subject = subject
		@from = hash[:from]
		@date = hash[:date]
	end
end

class Mailbox
  # your class from the last exercise
  attr_reader :name, :email
  	def initialize (name, email)
  		@name = name
		  @email = email
    end
end

class MailboxHtmlFormatter
  # fill in this class body
	def initialize (mailbox)
		@mailbox = mailbox
	end

	def format
    ["<html>",
      head,
      "<body>",
      title,
      table,
      "</body",
      "</html>"].join("\n")
  end

  def head
    ["<head>
    <style>
      table {
        border-collapse: collapse;
      }
      td, th {
        border: 1px solid black;
        padding: 1em;
      }
    </style>
  </head>"].join("\n")
  end
		
  def title
    ["<h1>#{@mailbox.name}</h1>"].join("\n")
  end

  def table
     ["<table>",
       table_header,
       "<tbody>",
       table_body,
       "</tbody>",
       "</table>"].join("\n")
   end

   def table_header
     ["<thead>
       <tr>
         <th>Date</th>
         <th>From</th>
         <th>Subject</th>
       </tr>
     </thead>"].join("\n")
    end

    def table_body
      var=""
      @mailbox.email.each do |mail|
        var << "    <tr>
           <td>#{mail.date}</td>
           <td>#{mail.from}</td>
           <td>#{mail.subject}</td>
         </tr>"
    end
    var
  end
    
end

emails = [
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
  Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" })
]
mailbox = Mailbox.new("Ruby Study Group", emails)
formatter = MailboxHtmlFormatter.new(mailbox)

puts formatter.format