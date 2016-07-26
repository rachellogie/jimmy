class AddVolunteerTypes < ActiveRecord::Migration
  def change
  	add_column :rooms, :volunteers_needed, :integer
  	add_column :rooms, :project_ongoing, :boolean
  end
end
