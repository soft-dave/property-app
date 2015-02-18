class MyuploadersController < ApplicationController
  before_action :set_myuploader, only: [:show, :edit, :update, :destroy]

  # GET /myuploaders
  # GET /myuploaders.json
  def index
    @myuploaders = Myuploader.all
  end

  # GET /myuploaders/1
  # GET /myuploaders/1.json
  def show
  end

  # GET /myuploaders/new
  def new
    @myuploader = Myuploader.new
  end

  # GET /myuploaders/1/edit
  def edit
  end

  # POST /myuploaders
  # POST /myuploaders.json
  def create
    @myuploader = Myuploader.new(myuploader_params)
    respond_to do |format|
      if @myuploader.save
        format.html { redirect_to @myuploader, notice: 'Myuploader was successfully created.' }
        format.json { render :show, status: :created, location: @myuploader }
      else
        format.html { render :new }
        format.json { render json: @myuploader.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myuploaders/1
  # PATCH/PUT /myuploaders/1.json
  def update
    respond_to do |format|
      if @myuploader.update(myuploader_params)
        format.html { redirect_to @myuploader, notice: 'Myuploader was successfully updated.' }
        format.json { render :show, status: :ok, location: @myuploader }
      else
        format.html { render :edit }
        format.json { render json: @myuploader.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myuploaders/1
  # DELETE /myuploaders/1.json
  def destroy
    @myuploader.destroy
    respond_to do |format|
      format.html { redirect_to myuploaders_url, notice: 'Myuploader was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myuploader
      @myuploader = Myuploader.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myuploader_params
      params.require(:myuploader).permit(:image)
    end
end
