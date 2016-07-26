class AddDobToUsers < ActiveRecord::Migration
  def change
    add_column :users, :date_of_birth, :datetime
    add_column :users, :gender, :string
    add_column :users, :current_location, :string
    add_column :users, :main_skill, :string
  end
end
