class ScreensController < ApplicationController
  before_action :set_screen, only: [:show, :edit, :update, :destroy]
  before_action :set_displays_availables, only: [:edit, :new, :show]
  # GET /screens
  # GET /screens.json
  def index
    @screens = Screen.all
  end

  # GET /screens/1
  # GET /screens/1.json
  def show
  end

  # GET /screens/new
  def new
     @screen = Screen.new
  end

  # GET /screens/1/edit
  def edit
  end

  # POST /screens
  # POST /screens.json
  def create
    @screen = Screen.new(screen_params)

    respond_to do |format|
      if @screen.save
        format.html { 
              flash[:success]= 'Screen was successfully created.'
              redirect_to screens_path
            }
        format.json { render :show, status: :created, location: @screen }
      else
        format.html { render :new }
        format.json { render json: @screen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /screens/1
  # PATCH/PUT /screens/1.json
  def update
    respond_to do |format|
      if @screen.update(screen_params)
        format.html { 
              flash[:success]= 'Screen was successfully updated.'
              redirect_to screens_path
            }
        format.json { render :show, status: :ok, location: @screen }
      else
        format.html { render :edit }
        format.json { render json: @screen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /screens/1
  # DELETE /screens/1.json
  def destroy
    @screen.destroy
    respond_to do |format|
      format.html { 
              flash[:warning]= 'Screen was successfully destroyed.'
              redirect_to screens_path
            }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_screen
      @screen = Screen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def screen_params
      params.require(:screen).permit(:name, :active, :order, :bgcolor, :bgimage, :display_id)
    end

    def set_displays_availables
      @displays = Display.where(active: true)
   
    end
end
