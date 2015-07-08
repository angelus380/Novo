require 'sinatra'

class Product
  attr_reader :id, :name, :price, :brand

  def initialize(hash)
    @id = hash[:id]
    @name = hash[:name]
    @price = hash[:price]
    @brand = hash[:brand]
  end

end

products = [
  Product.new({ id: 0, name: "samsung galaxy s6 edge", price: 829.90, brand: "samsung" }),
  Product.new({ id: 1, name: "lg g flex", price: 689.90, brand: "lg" }),
  Product.new({ id: 2, name: "apple iphone 6 plus", price: 779.90, brand: "apple" }),
  Product.new({ id: 3, name: "samsung galaxy alpha", price: 589.90, brand: "samsung" }),
  Product.new({ id: 4, name: "nokia lumia 930", price: 489.90, brand: "nokia" }),
  Product.new({ id: 5, name: "sony xperia z3 compact", price: 389.90, brand: "sony" }),
  Product.new({ id: 6, name: "apple iphone 6", price: 779.90, brand: "apple" }),
  Product.new({ id: 7, name: "huawei ascend g7", price: 259.90, brand: "huawei" }),
  Product.new({ id: 8, name: "sony xperia t2 ultra", price: 359.90, brand: "sony" }),
  Product.new({ id: 9, name: "lg g4", price: 589.90, brand: "lg" }),
  Product.new({ id: 10, name: "samsung galaxy note 4", price: 689.90, brand: "samsung" }),
  Product.new({ id: 11, name: "htc one m9", price: 674.90, brand: "htc" }),
  Product.new({ id: 12, name: "apple iphone 5s", price: 589.90, brand: "apple" })
]

get  '/' do
  @products = products
  erb :index
end

get "/show/:id" do
  @products = products
  @products.find do |product|
    if product.id == params[:id].to_i
      @product = product
    end
  end
  erb :show
end

post '/new' do
  @products = products
  id = products.last.id+1
  products << Product.new({ id: id, name: params[:name], price: params[:price], brand: params[:brand]})
  erb :index
end

post "/delete/:id" do
  @products = products
  @products.delete_if do |product|
    product.id == params[:id].to_i
  end
  erb :index
end