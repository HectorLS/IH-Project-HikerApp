class ChangeColumnNames < ActiveRecord::Migration
  def self_up
  	rename_column :routes, :latitude, :initial_latitude
  	rename_column :routes, :longitude, :initial_longitude
  end
end
