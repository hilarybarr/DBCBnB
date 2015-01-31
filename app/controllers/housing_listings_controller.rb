class HousingListingsController < ApplicationController
	def index
		@listings = HousingListing.all
	end

	def new
		@listing=HousingListing.new
	end

	def create
		@listing = HousingListing.new(housing_params)
		if @listing.save
			redirect_to housing_listings_path
		else
			session[:error] = @listing.errors.full_messages
			redirect_to root_path
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
    params.require(:housing_listing).permit(:title,  :price, :description, :location, :max_avail)
	end
end
