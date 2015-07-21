class CreateComments < ActiveRecord::Migration
  def change
  	create_table :comments do |table|
  		table.string :body
  		table.integer :customer_id
  		table.timestamps
  	end
  end
end
