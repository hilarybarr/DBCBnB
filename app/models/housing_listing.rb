class HousingListing < ActiveRecord::Base
<<<<<<< HEAD
	has_many :comments

	# paperclip
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	validates :room_sharing, presence: true
=======
>>>>>>> 93712d1a29c7714a64f75fad7a999994d9663e73
	validates :price, presence: true
	validates :location, presence: true, uniqueness: true
	validates :max_avail, presence: true
end
