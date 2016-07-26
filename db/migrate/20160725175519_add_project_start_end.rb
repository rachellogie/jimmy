class AddProjectStartEnd < ActiveRecord::Migration
  def change
  	add_column :rooms, :project_start, :datetime
  	add_column :rooms, :project_end, :datetime
  end
end
