class CreateHousingListings < ActiveRecord::Migration
  def change
    create_table :housing_listings do |t|
    	t.date :start_date
    	t.integer :price
    	t.date :end_date
    	t.text :description
    	t.string :location
    	t.integer :max_avail
    	t.boolean :room_sharing
    	t.belongs_to :user

      t.timestamps
    end
  end
end
