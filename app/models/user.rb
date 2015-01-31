class User < ActiveRecord::Base
	has_secure_password
	
	has_many :housing_listings
	has_many :roommate_listings
	has_many  :comments

	# paperclip
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:medium/devbootcamp_foot.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	validates :full_name, presence: true
	validates :email, presence: true, uniqueness: true
end
