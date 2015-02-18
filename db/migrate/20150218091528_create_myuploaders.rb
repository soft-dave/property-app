class CreateMyuploaders < ActiveRecord::Migration
  def change
    create_table :myuploaders do |t|
      t.attachment :image

      t.timestamps null: false
    end
  end
end
