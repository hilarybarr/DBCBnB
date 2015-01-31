class AddAttachmentAvatarToHousingListings < ActiveRecord::Migration
  def self.up
    change_table :housing_listings do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :housing_listings, :avatar
  end
end
