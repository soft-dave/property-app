class AddAttachmentAttachmentToPropertyImages < ActiveRecord::Migration
  def self.up
    change_table :property_images do |t|
      t.attachment :attachment
    end
  end

  def self.down
    remove_attachment :property_images, :attachment
  end
end
