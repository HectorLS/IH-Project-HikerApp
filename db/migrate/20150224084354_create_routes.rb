class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
    	t.string :name
    	t.string :area
    	t.string :city
    	t.string :country
    	t.string :description
    	t.float :latitude
    	t.float :longitude
    	t.float :size
    	t.integer :score
      t.timestamps null: false
    end
  end
end
