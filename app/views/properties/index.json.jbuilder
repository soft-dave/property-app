json.array!(@properties) do |property|
  json.extract! property, :id, :user_id, :property_type, :privacy, :no_of_badroom, :no_of_bathroom, :allow_multi_tenants_join_lease, :street_number, :address, :state, :country, :zip_code, :unit_number, :rent, :lease_type, :unit_title, :unit_rent, :property_description, :rules, :housemates
  json.url property_url(property, format: :json)
end
