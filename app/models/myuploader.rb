class Myuploader < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "100x100>", :thumb => "50x50>" },
    :path => ":rails_root/public/images/:id/:filename",
    :url  => "/images/:id/:filename"

  validates_attachment :image, :presence => true,
  	:content_type => {:content_type => ['image/jpeg', 'image/pjpeg', 'image/jpg','image/png', 'image/tif', 'image/gif'],
										:message => "has to be in a proper format"}, 
										:size => { :in => 0..2.megabytes }
end
