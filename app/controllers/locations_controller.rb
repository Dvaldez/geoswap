class LocationsController < ApplicationController

	def near_by
		respond_to do |format|
			format.html {}
			format.json { render :json => Location.within(params[:lat], params[:lng], 2.0) }
		end
	end
end
