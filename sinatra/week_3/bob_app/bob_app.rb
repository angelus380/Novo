require "sinatra"

class Bob
  def hey(statement)
    if statement.strip.empty?
      'Fine. Be that way!'
    elsif statement.upcase == statement && statement.downcase != statement
      'Woah, chill out!'
    elsif statement.end_with?('?')
      'Sure.'
    else
      'Whatever.'
    end
  end
end

get "/" do
	erb :form
end

get "/bob" do
	@bob_answer = Bob.new.hey(params["message"])
	erb :form
end