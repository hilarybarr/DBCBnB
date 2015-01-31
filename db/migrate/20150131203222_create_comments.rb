class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.text :body
    	t.belongs_to :user
    	t.belongs_to :housing_listings
    	t.belongs_to :roommate_listings

      t.timestamps
    end
  end
end
