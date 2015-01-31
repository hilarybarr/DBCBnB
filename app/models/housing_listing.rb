class HousingListing < ActiveRecord::Base
	has_many :comments

	validates :room_sharing, presence: true
	validates :price, presence: true
	validates :location, presence: true, uniqueness: true
	validates :max_avail, presence: true
end
