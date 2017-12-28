class DisplaysController < ApplicationController
  before_action :set_display, only: [:show, :edit, :update, :destroy]

  # GET /displays
  # GET /displays.json
  def index
    @displays = Display.all
  end

  # GET /displays/1
  # GET /displays/1.json
  def show
    @templates = SkinTemplate.where(active: true)
  end

  # GET /displays/new
  def new
    @display = Display.new
    @templates = SkinTemplate.where(active: true)
  end

  # GET /displays/1/edit
  def edit
    @templates = SkinTemplate.where(active: true)
  end

  # POST /displays
  # POST /displays.json
  def create
    @display = Display.new(display_params)
    screens_num = params[:split_in];
    # creamos las screens necesarias
    saved = @display.save
    
    create_screens(screens_num)

    respond_to do |format|
      if saved
        format.html { 
                      flash[:success]= 'Display was successfully created.' 
                      redirect_to displays_path 
                    }
        format.json { render :show, status: :created, location: @display }
      else
        format.html { render :new }
        format.json { render json: @display.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /displays/1
  # PATCH/PUT /displays/1.json

  def update
    respond_to do |format|
      if @display.update(display_params)
        format.html { 
                      flash[:success]= 'Display was successfully updated.'
                      redirect_to displays_path 
                     }
        format.json { render :show, status: :ok, location: @display }
      else
        format.html { render :edit }
        format.json { render json: @display.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /displays/1
  # DELETE /displays/1.json
  def destroy
    @display.destroy
    respond_to do |format|
      format.html { 
                    redirect_to displays_url 
                    flash[:warning]= 'Display was successfully destroyed.' 
                  }
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
      params.require(:display).permit(:name, :active, :order, :resolution)
    end

    def create_screens(i)
      #Setting the Default SkinTemplate
      dst= SkinTemplate.find(params[:template])
      case i
        when '1'
          mys = @display.screens.create(name: 'Unique', order: 1, active: true, bgcolor: '#ffffff' )
          mypage_name= @display.name + "-" + mys.name + "-page-one"
          p= mys.pages.create(name: mypage_name, order: 1, active: true, bgcolor: '#ffffff', skin_template: dst, carte_id: 1);
          add_sections_to(p,dst)

        when '2'
          mys = @display.screens.create(name: 'Left', order: 1, active: true, bgcolor: '#ffffff', proportion: 0.5 )
          mypage_name= @display.name + "-" + mys.name + "-page-one"
          p= mys.pages.create(name: mypage_name, order: 1, active: true, bgcolor: '#ffffff', skin_template: dst, carte_id: 1);
          add_sections_to(p,dst)

          mys = @display.screens.create(name: 'Rigth', order: 2, active: true, bgcolor: '#ffffff', proportion: 0.5 )
          mypage_name= @display.name + "-" + mys.name + "-page-one"
          p= mys.pages.create(name: mypage_name, order: 1, active: true, bgcolor: '#ffffff', skin_template: dst, carte_id: 1);
          add_sections_to(p,dst)
        when '3'
          mys = @display.screens.create(name: 'Left', order: 1, active: true, bgcolor: '#ffffff', proportion: 0.33 )
          mypage_name= @display.name + "-" + mys.name + "-page-one"
          p= mys.pages.create(name: mypage_name, order: 1, active: true, bgcolor: '#ffffff', skin_template: dst, carte_id: 1);
          add_sections_to(p,dst)

          mys = @display.screens.create(name: 'Center', order: 2, active: true, bgcolor: '#ffffff', proportion: 0.33 )
          mypage_name= @display.name + "-" + mys.name + "-page-one"
          p= mys.pages.create(name: mypage_name, order: 1, active: true, bgcolor: '#ffffff', skin_template: dst, carte_id: 1);
          add_sections_to(p,dst)

          mys = @display.screens.create(name: 'Rigth', order: 3, active: true, bgcolor: '#ffffff', proportion: 0.33 )
          mypage_name= @display.name + "-" + mys.name + "-page-one"
          p= mys.pages.create(name: mypage_name, order: 1, active: true, bgcolor: '#ffffff', skin_template: dst, carte_id: 1);
          add_sections_to(p,dst)

      end


    end

    def add_sections_to(my_page, dst)

      dst.skin_template_sections.each do |ss|
          mysec= Section.new(page: my_page, skin_template_section: ss, order: ss.order)
          mysec.save
      end

    end
    
end
