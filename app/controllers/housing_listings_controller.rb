class HousingListingsController < ApplicationController
	def index
		@listings = HousingListing.all
	end

	def new
	end

	def create
		@listing = HousingListing.new(housing_params)

		if @listing.save
			redirect housing_listing_path
		else
			session[:error] = @listing.errors.full_messages
			redirect new_housing_listing_path
		end
	end

	def show
		@listing = HousingListing.find(params[:id])
	end

	def destroy
		@listing = HousingListing.find(housing_params)
	end

	private

	def housing_params
    params.require(:housing_listing).permit(:start_date, :price, :end_date, :description, :location, :max_avail, :room_sharing, :avatar)
	end
end
