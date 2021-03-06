class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]
  before_action :set_screens_availables, only: [:show, :edit, :new, :update]

  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
  end

  # GET /pages/new
  def new
    @page = Page.new
  end

  # GET /pages/1/edit
  def edit
    @my_template = @page.skin_template
    @my_tsections= @my_template.skin_template_sections
    @my_values = @page.sections
    @my_carte = @page.carte 
  end

  # POST /pages
  # POST /pages.json
  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { 
              flash[:success]= 'Page was successfully created.'
              redirect_to pages_path
          #redirect_to @page, notice: 'Page was successfully created.' 
        }
        format.json { render :show, status: :created, location: @page }
      else
        format.html { render :new }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pages/1
  # PATCH/PUT /pages/1.json
  def update
    respond_to do |format|
      if @page.update(page_params)
        format.html { 
              flash[:success]= 'Page was successfully updated.'
              redirect_to pages_path 
            }
        format.json { render :show, status: :ok, location: @page }
      else
        format.html { render :edit }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @page.destroy
    respond_to do |format|
      format.html { 
          flash[:warning]= 'Page was successfully deleted.'
          redirect_to pages_path
        }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:name, :active, :order, :bgcolor, :bgimage, :screen_id)
    end

    def set_screens_availables
      @screens = Screen.where(active: true)
      @skin_templates = SkinTemplate.where(active: true)
      @cartes = Carte.where(active: true)
    end
end
