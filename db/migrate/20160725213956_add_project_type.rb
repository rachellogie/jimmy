class AddProjectType < ActiveRecord::Migration
  def change
  	add_column :rooms, :project_type, :string
  end
end
