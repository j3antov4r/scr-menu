class TypeSectionsController < ApplicationController
  before_action :set_type_section, only: [:show, :edit, :update, :destroy]

  # GET /type_sections
  # GET /type_sections.json
  def index
    @type_sections = TypeSection.all
  end

  # GET /type_sections/1
  # GET /type_sections/1.json
  def show
  end

  # GET /type_sections/new
  def new
    @type_section = TypeSection.new
  end

  # GET /type_sections/1/edit
  def edit
  end

  # POST /type_sections
  # POST /type_sections.json
  def create
    @type_section = TypeSection.new(type_section_params)

    respond_to do |format|
      if @type_section.save
        format.html { 
           flash[:success]= 'Screen was successfully created.'
           redirect_to type_sections_path
           
        }
        format.json { render :show, status: :created, location: @type_section }
      else
        format.html { render :new }
        format.json { render json: @type_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_sections/1
  # PATCH/PUT /type_sections/1.json
  def update
    respond_to do |format|
      if @type_section.update(type_section_params)
        format.html { 
           flash[:success]= 'Screen was successfully updated.'
           redirect_to type_sections_path
           
        }
        format.json { render :show, status: :ok, location: @type_section }
      else
        format.html { render :edit }
        format.json { render json: @type_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_sections/1
  # DELETE /type_sections/1.json
  def destroy
    @type_section.destroy
    respond_to do |format|
      format.html { 
           flash[:warning]= 'Screen was successfully deleted.'
           redirect_to type_sections_path
           
        }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_section
      @type_section = TypeSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_section_params
      params.require(:type_section).permit(:name, :active, :abrev, :tag)
    end
end
