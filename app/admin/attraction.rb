ActiveAdmin.register Attraction do
  permit_params :title

  index do
    selectable_column
    id_column
    column :title
    column :created_at
    actions
  end

  filter :title
  filter :created_at

  form do |f|
    f.inputs "Attraction Details" do
      f.input :title
    end
    f.actions
  end

end
