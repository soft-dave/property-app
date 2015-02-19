# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

AdminUser.create(:email => 'dave@gmail.com', :password => '123456', :password_confirmation => '123456')

Utility.create([
  {:title => 'Electricity'},
  {:title => 'Hot water'},
  {:title => 'Heating'},
  {:title => 'Gas'},
  {:title => 'Stander kitchen applications'}
  ])

Amenity.create([
  {:title => 'Furnished'},
  {:title => 'Unfurnished'},
  {:title => 'Non smoking'},
  {:title => 'Internet'},
  {:title => 'Gym'},
  {:title => 'Parking'},
  {:title => 'Swimming pool'},
  {:title => 'Laundry facility'},
  {:title => 'Private bathroom'},
  {:title => 'Private kitchen'},
  {:title => 'Air-Conditioning'},
  {:title => 'Cleaning service'},
  {:title => 'Elevator'},
  {:title => 'Spa bath'},
  {:title => 'TV'},
  {:title => 'Wi-Fi'},
  {:title => 'Male accommodation'},
  {:title => 'Female accommodation'},
  {:title => 'Mixed accommodation'}
  ])

Attraction.create([
  {:title => 'University'},
  {:title => 'Public transportation'},
  {:title => 'Shops and restaurants'},
  {:title => 'Central location'},
  {:title => 'Downtown'},
  {:title => 'Park and outdoor'},
  {:title => 'Seafront'},
  {:title => 'Waterfront/Riverside'},
  {:title => 'Theatre'}
  ])