require "rubygems"

require "sinatra"

get "/" do
	"Hello, World"	
end

get "/about" do 
	"A little about me."
end

get "/hello/:name/:city" do 
	"Hello there, #{params[:name].upcase} #{params[:city]}"
end

get "/more/*" do 
	params[:splat]
end

get "/form" do 
	erb :form
end

get "/secret" do 
	erb :secret
end

