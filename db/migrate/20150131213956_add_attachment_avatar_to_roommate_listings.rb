class AddAttachmentAvatarToRoommateListings < ActiveRecord::Migration
  def self.up
    change_table :roommate_listings do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :roommate_listings, :avatar
  end
end
