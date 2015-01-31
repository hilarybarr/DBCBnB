class User < ActiveRecord::Base
	validates :full_name, presence: true
	validates :email, presence: true, uniqueness: true
end
