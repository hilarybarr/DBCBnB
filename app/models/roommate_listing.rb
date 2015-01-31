class RoommateListing < ActiveRecord::Base
	has_many :comments

	validates :start_date, presence: true
	validates :max_price, presence: true
	validates :cohort_location, presence: true
end
