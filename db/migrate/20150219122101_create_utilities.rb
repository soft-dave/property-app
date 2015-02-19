class CreateUtilities < ActiveRecord::Migration
  def change
    create_table :utilities do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
