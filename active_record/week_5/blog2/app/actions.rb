
get "/" do
	@posts = Post.all
	erb :index
end

get "/show/:id" do 
	@post = Post.find(params[:id])
	erb :show
end

post "/create" do 
	Post.create(title: params[:title], body: params[:body])
	redirect "/"
end

post "/show/:id/comment" do 
	@post = Post.find(params[:id])
	Comment.create(body: params[:body], post_id: params[:id])
	redirect "/show/#{params[:id]}"
end
