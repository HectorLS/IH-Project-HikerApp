class CreateGpxFiles < ActiveRecord::Migration
  def change
    create_table :gpx_files do |t|
    	t.string :name,
    	t.string	:filename
    	t.binary :data,	:null
      t.timestamps null: false
    end
  end
end
