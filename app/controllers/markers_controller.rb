class MarkersController < ApplicationController

  def new
    @marker = Marker.new
  end

  def create
    @marker = Marker.new marker_params
    if @marker.save
      flash[:notice] = t(:layer_saved_success)
      redirect_to routes_path
    else
      render 'new'
    end
  end

  private
  def marker_params
    params.require(:marker).permit(
      :fire_stations, 
      :police_stations, 
      :ranger_stations,
      :danger_animal,
      :picnic_areas,
      :shelters,
      :water_source,
      :area,
      :city,
      :country
    )
    
  end


end
