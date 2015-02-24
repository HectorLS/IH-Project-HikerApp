class ChangeName < ActiveRecord::Migration
  def self.up
  	rename_column :routes, :latitude, :initial_latitude
  	rename_column :routes, :longitude, :initial_longitude
  end
end

