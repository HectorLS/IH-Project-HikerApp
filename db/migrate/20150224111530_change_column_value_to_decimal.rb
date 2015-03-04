class ChangeColumnValueToDecimal < ActiveRecord::Migration
  def up
  	change_table :routes do |t|
  		t.change :latitude, :decimal
    	t.change :longitude, :decimal
    	t.change :final_latitude, :decimal
    	t.change :final_longitude, :decimal
    end

    change_table :trails do |t|
  		t.change :initial_latitude, :decimal
    	t.change :initial_longitude, :decimal
    	t.change :final_latitude, :decimal
    	t.change :final_longitude, :decimal
    end
  end
end
