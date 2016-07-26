class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :project_name
      t.text :summary
      t.string :address
      t.boolean :active
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
