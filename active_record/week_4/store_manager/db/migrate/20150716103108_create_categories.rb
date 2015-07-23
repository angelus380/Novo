class CreateCategories < ActiveRecord::Migration
  def change
  	create_table :categories do |table|
  		table.string :name
  	end
  end
end
