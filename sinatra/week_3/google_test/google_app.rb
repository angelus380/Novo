require "sinatra"

get "/" do
	erb :google
end

get "/dracula" do
	
	erb :profile
end

#get "/page/not/fount" do

#	erb :google
#end