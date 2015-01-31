class User < ActiveRecord::Base
	has_secure_password
	has_many :housing_listings
	has_many :roommate_listings

	validates :full_name, presence: true
	validates :email, presence: true, uniqueness: true
end
