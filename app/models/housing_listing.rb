class HousingListing < ActiveRecord::Base
	validates :room_sharing, presence: true
	validates :price, presence: true
	validates :location, presence: true, uniqueness: true
	validates :max_avail, presence: true
end
