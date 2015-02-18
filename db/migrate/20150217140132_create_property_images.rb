class CreatePropertyImages < ActiveRecord::Migration
  def change
    create_table :property_images do |t|
      t.integer :property_id

      t.timestamps null: false
    end
  end
end
