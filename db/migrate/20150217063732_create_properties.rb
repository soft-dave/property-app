class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :user_id
      t.string :property_type
      t.string :privacy
      t.integer :no_of_badroom
      t.integer :no_of_bathroom
      t.boolean :allow_multiple_user_to_share
      t.boolean :allow_individual_user_to_rent
      t.string :lease_type
      t.datetime :availibility
      t.boolean :accept_mon_fri_booking
      t.boolean :same_as_landlord_address
      t.boolean :different_address

      t.string :street_number
      t.string :street_address
      t.string :state
      t.string :country
      t.integer :zip_code

      t.string :unit_number
      t.integer :rent
      t.string :rent_type
      t.string :unit_title
      t.integer :unit_rent
      t.string :utilities
      t.string :amenities_and_features
      t.string :nearby_attractions

      t.text :description
      t.text :rules
      t.string :housemates

      t.timestamps null: false
    end
  end
end
