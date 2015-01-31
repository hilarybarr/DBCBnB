class User < ActiveRecord::Base
	has_secure_password
	has_many :housing_listings

	validates :full_name, presence: true
	validates :email, presence: true, uniqueness: true
end
