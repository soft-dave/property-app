class PropertyController < ApplicationController

  def index
  
   @properties = Property.all
  
  end

  def show
  	@property = Property.find(params[:id])
  end
 
  def new
  	
  	@property = Property.new
  	
  end

  def create
  	
   @property = Property.new(prop_params)
   if @property.save
      redirect_to(:controller => "property", :action => "index")
    else
      render("new")
    end  
  	
  end

  private

  def prop_params
     params.require(:property).permit(:street_number, :street_address, :city, :state, :zip_code, :country)
  	
  end
end
