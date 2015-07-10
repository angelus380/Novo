require 'sinatra'
require "date"

class Party
attr_reader :id, :name, :description, :date_time
  def initialize(id, name, description, date_time)
  		@name = name;
  		@description = description;
  		@date_time = date_time;
  		@id = id
  end

  def change_name (name)
  	@name = name
  end

  def change_des (description)
  	@description = description
  end

  def change_date (date_time)
  	@date_time = date_time
  end

end
#DateTime.strptime('2001-02-03T04:05:06+07:00', '%Y-%m-%dT%H:%M:%S%z')

parties = [
	Party.new(0, "shotgun", "yell shotgun", "2016-03-04"),
	Party.new(1, "gangsta", "dress lika a gangsta", "2016-06-22"),
	Party.new(2, "dragon_ball", "dbz musical ost orchestrated", "2016-10-02"),
	Party.new(3, "daytime", "this should vanish!", "2016-02-03"),
	#DateTime.parse()
]
# list of all parties
get '/' do
	@parties = parties.reject do |party|
		DateTime.strptime(party.date_time, '%Y-%m-%d')<DateTime.now
	end
	
	@parties = parties.sort_by do |party|
		party.date_time
	end

	if params[:sort] == "dsc"
		@parties = @parties.reverse
	end
	erb :list
end

# form to create a new party
get '/new' do
	erb :new
end
# search for a party using a word
get "/search" do 
	@parties = parties.select do |party|
		party.name.downcase == params[:search].downcase
	end
	@a = ""
	if @parties == []
		@a = "Not found"
	end
	erb :search
end
# show individual post
get '/:id' do
	@party = parties.find do |party|
		party.id == params[:id].to_i
	end
	erb :show
end
# form to edit a single party
get '/:id/edit' do
	@party = parties.find do |party|
		party.id == params[:id].to_i
	end
	erb :edit
end
# method to save a new party, the /new route should point here
post '/create' do
	id = parties.last.id + 1
	parties << Party.new(id, params[:name], params[:description], params[:date_time])
	redirect "/"
end
#method to remove a party
post "/remove/:id" do 
	@parties = parties.delete_if do |party|
		party.id == params[:id].to_i
	end
	redirect"/"
end
# method to update an existing party, the /:id/edit should point here
post '/:id/update' do
	party = parties.find do |party|
		party.id == params[:id].to_i
	end
	party.change_name(params[:name].to_s)
	party.change_des(params[:description].to_s)
	party.change_date(params[:date_time].to_s)
	redirect '/'
end