class CreateRoommateListings < ActiveRecord::Migration
  def change
    create_table :roommate_listings do |t|

      t.timestamps
    end
  end
end
