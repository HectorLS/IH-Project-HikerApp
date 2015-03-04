class CreateRings < ActiveRecord::Migration
  def change
    create_table :rings do |t|
    	t.belongs_to :route
    	t.belongs_to :trail
    	t.float :ring_latitude
    	t.float :ring_longitude
      t.timestamps null: false
    end
  end
end
