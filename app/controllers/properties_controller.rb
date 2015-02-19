class PropertiesController < ApplicationController

  before_action :set_property, only: [:show, :edit, :update, :destroy]

  # GET /properties
  # GET /properties.json
  def index
    @properties = Property.all
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
  end

  # GET /properties/new
  def new
    session[:property_params] = {}
    @property = Property.new(session[:property_params])
    @property.current_step = session[:property_step]
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties
  # POST /properties.json

  def create
    session[:property_params].deep_merge!(params[:property]) if params[:property]
    @property = Property.new(session[:property_params])
    #@property.user_id = current_user.id
    @property.current_step = session[:property_step]
    if @property.valid?
      if params[:back_button]
        @property.previous_step
      elsif @property.last_step?
        @property.save if @property.all_valid?
      else
        @property.next_step
      end
      session[:property_step] = @property.current_step
    end
    if @property.new_record?
      render "new"
    else
      session[:property_step] = session[:property_params] = nil
      flash[:notice] = "property saved!"
      redirect_to thankyou_url
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url, notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def thank_you
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit!
    end
end
