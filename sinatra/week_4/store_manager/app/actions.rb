
get "/" do
	@products = Product.all
	@categories = Category.all
  erb :index
end

get "/new/product" do 
	@categories = Category.all
	erb :new_product
end

get "/new/category" do 
	erb :new_category
end

get "/edit/product/:id" do 
	@product = Product.find(params[:id])
	erb :edit_product
end

post "/create/product" do 
	Product.create(name: params[:name], description: params[:description], price: params[:price], category_id: params[:category])
	p params
	redirect "/"
end

post "/update/product" do 
	Product.update(name: params[:name], description: params[:description], price: params[:price], category_id: params[:category])
	redirect "/"
end

post "/create/category" do 
	Category.create(name: params[:name])
	redirect "/"
end

post "/update/category" do 
	Category.update(name: params[:name])
	redirect "/"
end