
get "/" do
	@complete_todos = []
	@not_complete_todos = []

	todos = Todo.all
	todos.each do |todo|
		if todo.complete == true
			@complete_todos << todo
		else
			@not_complete_todos << todo
		end
	end
	#Todo.where(complete: true)
	#@not_complete_todos = todos.select do |todo|
		#todo.complete == false
	#end
	erb :index
end

post "/todos/create" do 
	Todo.create({title: params[:title]})
	redirect "/"
end

get "/todos/<% todo.id %>/toggle" do 
	todo = Todo.find(params[:id])
	todo.complete = !todo.complete
	todo.save
	redirect "/"
end

get "todos/<% todo.id %>/remove" do 
	Todo.destroy(params[:complete])
	redirect "/"
end