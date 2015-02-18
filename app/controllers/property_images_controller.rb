class PropertyImagesController < ApplicationController

  def index
    @property_image = PropertyImage.all
  end

  def new
    @property_image = PropertyImage.new
  end

  def create
    @property_image = PropertyImage.new
    params[:property_image][:attachment].original_filename = "#{rand(10)}.jpg"
    @property_image.attachment = open(URI.parse(params[:property_image][:attachment]))
    if @property_image.save
      redirect_to root_path
    end
  end
end
