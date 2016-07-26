class AddCountryField < ActiveRecord::Migration
  def change
  	add_column :rooms, :country, :string
  end
end
