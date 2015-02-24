class RoutesController < ApplicationController
	def index
	end

	def new
		@route = Route.new
	end

	def create
		@route = Route.new route_params

		if @route.save
			redirect_to action: 'index'
		else
			render 'new'
		end
	end

	private
		def route_params
			params.require(:route).permit(:name, :city, :country)
		end

end
