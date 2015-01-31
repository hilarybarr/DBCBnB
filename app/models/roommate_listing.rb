class RoommateListing < ActiveRecord::Base
	has_many :comments

	# paperclip
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	validates :start_date, presence: true
	validates :max_price, presence: true
	validates :cohort_location, presence: true
end
