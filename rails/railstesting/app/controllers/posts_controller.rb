class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end
	
	def show
		@post = Post.find params[:id]
	end
	
	def create
		@post = Post.create(
			title: params[:post][:title],
			body: params[:post][:body]
			)

		redirect_to posts_path
	end
	
	def destroy
		@post = Post.find(params[:id]).destroy

		redirect_to posts_path
	end

	def edit
		@post = Post.find params[:id]
	end

	def update
		@post = Post.find params[:id]
		@post.update(
			title: params[:post][:title],
			body: params[:post][:body]
			)

		redirect_to posts_path
	end
end