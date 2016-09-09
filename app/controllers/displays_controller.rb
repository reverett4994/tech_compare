class DisplaysController < ApplicationController
  require 'amazon/ecs'
  before_action :set_display, only: [:show, :edit, :update, :destroy]
  WillPaginate.per_page = 5
  # GET /displays
  # GET /displays.json
  def index
    #next 2 lines say if nil equal ....
    params[:sort] ||='name'
    params[:direction] ||='ASC'

    @displays=Display.order(params[:sort]+" "+ params[:direction] )
    @displays=@displays.paginate(:page=>params[:page])

  end

  # GET /displays/1
  # GET /displays/1.json
  def show
    @displays = Display.all
    @names=[]
    @displays.each do |display|
      @names.push display.name
    end
  end

  # GET /displays/new
  def new
    @display = Display.new
  end

  # GET /displays/1/edit
  def edit
  end

  # POST /displays
  # POST /displays.json
  def create
    @display = Display.new(display_params)

    respond_to do |format|
      if @display.save
        format.html { redirect_to @display, notice: 'Display was successfully created.' }
        format.json { render :show, status: :created, location: @display }
      else
        format.html { render :new }
        format.json { render json: @display.errors, status: :unprocessable_entity }
      end
    end
  end

  def display_names
    @names=Display.order(:name).where("name LIKE ?", params[:term])
    render json: @names.map(&:name)
  end
  

  # PATCH/PUT /displays/1
  # PATCH/PUT /displays/1.json
  def update
    respond_to do |format|
      if @display.update(display_params)
        format.html { redirect_to @display, notice: 'Display was successfully updated.' }
        format.json { render :show, status: :ok, location: @display }
      else
        format.html { render :edit }
        format.json { render json: @display.errors, status: :unprocessable_entity }
      end
    end
  end
  def search
    @search=params[:search]
    @search2=params[:search2]
    @display=Display.find_by('name LIKE ?',@search )
    @display2=Display.find_by('name LIKE ?',@search2 )
   
  end

  # DELETE /displays/1
  # DELETE /displays/1.json
  def destroy
    @display.destroy
    respond_to do |format|
      format.html { redirect_to displays_url, notice: 'Display was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_display
      @display = Display.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def display_params
      params.require(:display).permit(:Price, :name, :resolution, :brand, :aspect_ratio, :size, :ports,
                                      :response_time, :refresh_rate, :speakers, :dimensions, :panel, 
                                      :release, :stand_misc, :gpu_sync,:image)
    end
end
