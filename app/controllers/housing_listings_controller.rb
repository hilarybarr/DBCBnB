class HousingListingsController < ApplicationController
	def index
		@listings = HousingListing.all
	end

end
