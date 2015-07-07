require "sinatra"

class Post
	attr_reader :id, :title, :body, :created_at
	def initialize (id, title, body, created_at)
		@id = id;
		@title = title;
		@body=body;
		@created_at=created_at;
	end
end

class Comment
	attr_reader :id, :body, :author, :post_id
	def initialize(id, body, author, post_id)
		@id = id;
		@body = body;
		@author = author;
		@post_id = post_id;
	end
end

comments = [
  Comment.new(0, 'I really like this post', 'Gabriel', 1),
  Comment.new(1, 'I really hate this post', 'Jorge', 3),
  Comment.new(2, 'Ishi Ni San Kiai!', 'Shin', 2),
  Comment.new(3, 'Thanks matte!', 'Guy with straws', 0)
]

posts = [
	Post.new(0, "Blog Tutorial", "Use this blog wrecklessly :D.", "7 de Agosto"),
	Post.new(1, "Babes", "Babes! Lots of babes!", "2 de Setembro"),
	Post.new(2, "Cheack this OUT!", "Guy jumps out of a briedge! Muahahah", "0,1 de Agosto"),
	Post.new(3, "Stuff", "I've been collecting stuff. Here are some of my latest adquirements.", "0 de Agosto")
]

def comments_for_post (comments, posts)
	comments.select do |comment|
		comment.post_id == @post.id
	end
end

get "/" do
	@posts = posts
	erb :index
end

get "/show/:id" do
	@post = posts.find do |post|
		post.id == params[:id].to_i
	end
	@comments = comments_for_post(comments, posts)
	erb :show			
end