class LayersController < ApplicationController


	def new
		@route = Route.find params[:route_id]
		@layer = @route.layers.new
	end

	def create
		@route = Route.find params[:route_id]
		@layer = @route.layers.new layer_params
		if @layer.save
			flash[:notice] = t(:layer_saved_success)
			redirect_to route_path(@route.id)
		else
			render 'new'
		end
	end

	def destroy
	end

	private
	def layer_params
		params.require(:layer).permit(:gpx, :kml)
		
	end

end
