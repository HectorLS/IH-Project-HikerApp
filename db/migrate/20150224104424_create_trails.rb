class CreateTrails < ActiveRecord::Migration
  def change
    create_table :trails do |t|
    	t.string :name
    	t.string :description
    	t.float :initial_latitude
    	t.float :initial_longitude
    	t.float :final_latitude
    	t.float :final_longitude
      t.timestamps null: false
    end
  end
end
