
class Product
	attr_reader :name, :price, :brand

	def initialize (attributes_hash)
		@name = attributes_hash[:name]
		@price = attributes_hash[:price]
		@brand = attributes_hash[:brand]
	end
end

class ProductCollection
	def initialize (products)
		@products = products
	end

	def count
		@products.count
	end

	def get_names
		@products.map do |product|
			product.name
		end
	end

	def filter_by_brand(brand)
		@products.select do |product|
			product.brand == brand
		end
	end

	def count_by_brand(brand)
		filter_by_brand(brand).count
		# @product.count do |product|
		# 	product.brand == brand
	end

	def group_by_brand
		@products.group_by do |product|
			product.brand
		end
	end

	def cheapest
		@products.min_by do |product|
			product.price
		end
	end
	
	def most_expensive
		@products.max_by do |product|
			product.price
		end
	end	
end

# products = [
#   Product.new({ name: "Samsung Galaxy S6 Edge", price: 829.90, brand: "Samsung" })
# ]

# collection = ProductCollection.new(products)
# puts %Q(
#   Product count: #{ collection.count }
#   Product names: #{ collection.get_names }
#   Only 'LG' brand: #{ collection.filter_by_brand('LG') }
#   Count 'Samsung' brand: #{ collection.count_by_brand('Samsung') }
#   Group by brand: #{ collection.group_by_brand }
#   Most cheap: #{ collection.cheapest }
#   Most expensive: #{ collection.most_expensive }

# )
