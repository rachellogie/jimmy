class AddAddressFields < ActiveRecord::Migration
  def change
  	add_column :rooms, :postcode, :integer
  	add_column :rooms, :street_address, :string
  	add_column :rooms, :city, :string
  	add_column :rooms, :state, :string
  end
end
