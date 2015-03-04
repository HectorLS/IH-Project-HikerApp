class CreateLayers < ActiveRecord::Migration
  def change
    create_table :layers do |t|
    	t.integer :route_id
    	t.string :gpx_uid
    	t.string :gpx_name
    	t.string :kml_uid
    	t.string :kml_name
      t.timestamps null: false
    end
  end
end