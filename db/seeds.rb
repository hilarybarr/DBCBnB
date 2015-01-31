require 'faker'
require 'dbc-ruby'

users = DBC::User.all 

users.each do |user|
	User.create(full_name: user.name, email:user.email, facebook_url: user.profile[:facebook], password: Faker::Internet.password(8))
end

HousingListing.create(start_date: Time.now(), end_date: Time.now(), price: 100, description: "yeeeee", location: "PA", max_avail: 1, room_sharing: true)
RoommateListing.create(start_date: Time.now(), max_price: 100, end_date: Time.now(), description: "yeeeee", location: "PA", cohort_name: "Ospreys", cohort_location: "true")

20.times do 
	HousingListing.create(
		start_date: Faker::Date.backward(20), 
		end_date: Faker::Date.forward(20), 
		price: Faker::Commerce.price,
		description: Faker::Lorem.paragraph,
		location: Faker::Address.city,
		max_avail: 2,
		room_sharing: true)
end

20.times do 
	RoommateListing.create(
		start_date: Faker::Date.backward(20), 
		end_date: Faker::Date.forward(20), 
		max_price: Faker::Commerce.price,
		description: Faker::Lorem.paragraph,
		location: Faker::Address.city,
		cohort_name: "Ospreys")
end
