class CreateKmlFiles < ActiveRecord::Migration
  def change
    create_table :kml_files do |t|

      t.timestamps null: false
    end
  end
end
