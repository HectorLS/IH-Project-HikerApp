class ChangeColumnValue < ActiveRecord::Migration
  def up
  	change_table :rings do |t|
  		t.change :ring_latitude, :decimal
    	t.change :ring_longitude, :decimal
    end
  end
end
