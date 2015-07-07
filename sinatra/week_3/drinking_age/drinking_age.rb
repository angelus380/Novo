require "sinatra"
def drinking_age (age)
	if age == nil
		"error"
	elsif age.to_i < 18
		"You're not allowed!!!"
	else
		"Allowed!!!"
	end
end

get "/" do 
	erb :form
end

get "/message" do
	@message = drinking_age(params["age"])
	erb :message
end