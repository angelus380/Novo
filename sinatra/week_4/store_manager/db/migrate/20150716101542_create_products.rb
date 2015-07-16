class CreateProducts < ActiveRecord::Migration
  def change
  	create_table :products do |table|
  		table.string :name
  		table.string :description
  		table.decimal(:price, { precision: 5, scale: 2 })
  		table.integer :category_id
  		
  	end
  end
end
