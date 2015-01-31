class HousingListingsController < ApplicationController
	def index
		@listings = HousingListing.all
	end

	def new
	end

	def create
		@listing = HouseListing.new()

		if @listing.save
			redirect housing_listing_path
		else
			session[:error] = @listing.errors.full_messages
			redirect housing_listing_path
		end
	end
end
