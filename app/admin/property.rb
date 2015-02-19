ActiveAdmin.register Property do
  permit_params :property_type, :privacy

  index do
    selectable_column
    id_column
    column :property_type
    column :privacy
    column :created_at
    actions
  end

  filter :property_type
  filter :privacy
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :property_type
      f.input :privacy
    end
    f.actions
  end

end
