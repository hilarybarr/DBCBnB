class RoommateListingsController < ApplicationController
	def index
		@roommate_listings = RoommateListing.all
	end

	def new
	end

	def create
		@roommate_listing = RoommateListing.new(roommate_listing_params)

		if @roommate_listing.save
			redirect roommate_listing_path
		else
			session[:error] = @roommate_listing.errors.full_messages
			redirect new_roommate_listing_path
		end
	end

	def show
		@roommate_listing = RoommateListing.find(params[:id])
	end

	def destroy
		@roommate_listing = RoommateListing.find(roommate_listing_params)
	end

	private

	def roommate_listing_params
    params.require(:roommate_listing).permit(:start_date, :max_price, :end_date, :description, :location, :cohort_name, :cohort_location, :avatar)
	end
end
