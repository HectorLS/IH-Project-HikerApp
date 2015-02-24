class AddFinalPoints < ActiveRecord::Migration
  def change
  	add_column :routes, :final_latitude, :float
  	add_column :routes, :final_longitude, :float
  end
end
