class PropertyImage < ActiveRecord::Base
  belongs_to :property
  has_attached_file :attachment, :styles => { :medium => "100x100>", :thumb => "50x50>" },
    :path => ":rails_root/public/property_images/attachment/:id/:filename",
    :url  => "/property_images/attachment/:id/:filename"

  validates_attachment :attachment, :presence => true,
    :content_type => {:content_type => ['image/jpeg', 'image/pjpeg', 'image/jpg','image/png', 'image/tif', 'image/gif'],
                    :message => "has to be in a proper format"}, 
                    :size => { :in => 0..2.megabytes }
end
