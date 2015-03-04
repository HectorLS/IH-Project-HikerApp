class CreateMarkers < ActiveRecord::Migration
  def change
    create_table :markers do |t|
      t.string :area
      t.string :city
      t.string :country
      t.string :ranger_stations_uid
      t.string :ranger_stations_name
      t.string :police_stations_uid
      t.string :police_stations_name
      t.string :fire_stations_uid
      t.string :fire_stations_name
      t.string :danger_animal_uid
      t.string :danger_animal_name
      t.string :water_source_uid
      t.string :water_source_name
      t.string :shelters_uid
      t.string :shelters_name
      t.string :picnic_areas_uid
      t.string :picnic_areas_name
      t.timestamps null: false
    end
  end
end
