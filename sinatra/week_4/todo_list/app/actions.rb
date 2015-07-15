

get "/" do
	todos = Todo.all
	@completed = todos.select do |todo|
		todo.complete == true
	end

	@notcompleted = todos.select do |todo|
		todo.complete == false
	end
	erb :index
end

post "/new" do 
	Todo.create(title: params[:new], complete: false)
	redirect "/"
end

post "/remove/:id" do 
	@todos = Todo.destroy(params[:id])
	redirect "/"
end

post "/done/:id" do
	todo = Todo.find(params[:id])
	if params[:done] == "yes"
		todo.complete = true
		todo.save
	end
	redirect "/"
end

post "/undone/:id" do 
	todo = Todo.find(params[:id])
	if params[:undone] == "yes"
		todo.complete = false
		todo.save
	end
	redirect "/"
end


