require "sinatra"

get "/" do
	"Hello world :" +1.to_s
end

get "/about" do
	"Hello man. It's me"
end

get "/hello/:name/:middlename/:lastname" do
	"Hello #{params[:name]} ... #{params[:middlename]} ... #{params[:lastname]}"
end

get "/search/:name/:age/:city" do
	"Hey, you're #{params[:name]}, #{params[:age]} years, from #{params[:city]}!"
end

get "/get/:pits/:parag" do
	params.keys.join(" ")
end

get "/form" do
	erb :form
end

get "/submission" do
	"Hey #{params[:username]} is it #{params[:email]}"
end