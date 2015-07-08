require "sinatra"

def make_acronym(name)

	name.each do |key|
		if key.to_i.is_a Fixnum
			"No letters"
		else
			acronym.split.map do |letter|
				letter[0].upcase
			end.join
		end
	end
end

get "/" do 
	erb :form
end

get "/message" do 
	@message = make_acronym(params[:name])
	erb :message
end

