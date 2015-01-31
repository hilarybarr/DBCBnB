class CreateRoommateListings < ActiveRecord::Migration
  def change
    create_table :roommate_listings do |t|
    	t.date :start_date
    	t.integer :max_price
    	t.date :end_date
    	t.text :description
    	t.string :location
    	t.string :cohort_name
    	t.string :cohort_location
    	t.belongs_to :user

      t.timestamps
    end
  end
end
