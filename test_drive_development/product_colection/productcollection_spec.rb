require_relative 'productcollection'

describe Product do
	it "gets the name of the product " do
		product = Product.new({name: "Samsung Galaxy", price: 829.90, brand: "Samsung"})
		expect(product.name).to eq "Samsung Galaxy" 
	end
end

describe ProductCollection do 

	let(:products) {[
			Product.new({ name: "Samsung Galaxy S6 Edge", price: 829.90, brand: "Samsung" }),
			Product.new({ name: "Apple Berry China", price: 20.20, brand: "Made in China" }),
			Product.new({ name: "Iphone 6", price: 700.90, brand: "Apple" })
		]}
	let(:collection) {ProductCollection.new(products)}


	it "counts the list of products" do 
		expect(collection.count).to eq 3
	end
 
 	it "gets the name of products" do 
		expect(collection.get_names).to eq ["Samsung Galaxy S6 Edge", "Apple Berry China", "Iphone 6"]
	end

	it "filters brands name of products" do 
		expect(collection.filter_by_brand("Made in China").map {|product| product.brand}).to eq ["Made in China"]

	end
end