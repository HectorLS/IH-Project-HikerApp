class RoutesController < ApplicationController
	
	def index
		@routes = Route.all
	end

	def new
		@route = Route.new

	end

	def create
		@route = Route.new route_params

		if @route.save
			redirect_to new_route_layer_path(@route.id)
		else
			render 'new'
		end
	end

	def show
		@route = Route.find params[:id]
		@layer = @route.layers
		@marker = Marker.where(country: @route.country, city: @route.city).first
	end

	def search
		@routes = Route.search(params[:search])
		render 'index'
	end

	private
		def route_params
			params.require(:route).permit(:name, :city, :country, :description)
		end

end
