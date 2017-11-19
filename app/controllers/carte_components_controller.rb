class CarteComponentsController < ApplicationController

  

  before_action :set_type, except: [:home] 

  before_action :set_carte_component, only: [:show, :edit, :update, :destroy]

  before_action :set_parents_actives, only: [:new, :edit]

  def home
  end

  def index
    @carte_components = type_class.where("active = ? AND parent_id  IS NOT NULL",  true).order(:parent_id, :id ).paginate(:page => params[:page], :per_page => @items_per_pages)
  end

  def show

  end

  def new
    @carte_component = type_class.new
     
  end

  def edit
  end

  def create
    
    i_parent = get_request_params[:parent_id]
    my_parent = Carte.find(i_parent)

    @carte_component =type_class.new(get_request_params.permit!)  #permit! nos deja mapear todos los parametros del request al objeto
    @carte_component.active = true
    @carte_component.parent = my_parent
    if @carte_component.save
      @carte_component.lineage= my_parent.lineage + "-" + @carte_component.id.to_s 
      @carte_component.save 
      flash[:success] = "#{type_class} was successfully created"
      redirect_to_view
    else
      set_parents_actives
      render 'new'
    end
    #@carte_component.save
    #my_parent.add(@carte_component) 

    

  end

  def update
    #hay que verificar varias cosas
    old_parent_id = @carte_component.parent_id
    if @carte_component.update(get_request_params.permit!)
      if get_request_params[:parent_id] != old_parent_id
        @carte_component.lineage = @carte_component.parent.lineage +  "-" + @carte_component.id.to_s 
        @carte_component.save
      end
      flash[:success] = "#{type_class} was successfully updated"
      redirect_to_view
    else
      render 'edit'
    end
    
  end

  def destroy
    if @carte_component.destroy
      flash[:warning] = "#{type_class} was successfully deleted"
    end
    redirect_to_view
  end

  private 

  #truco para usar STI
  def set_type
    @type = type
  end

  def type
    CarteComponent.types.include?(params[:type]) ? params[:type] : "CarteComponent"
  end

  def type_class
    type.constantize
  end

  # preparando lo necesario para el controlador
  def set_carte_component
    @carte_component = type_class.find(params[:id])
  end

  def set_parents_actives
    @parents = Carte.where(active: true) 
  end 

  def redirect_to_view
    if @type == 'Carte'
      redirect_to cartes_path
    else
      redirect_to carte_items_path
    end
  end

  def get_request_params
    request_params = params[:type] == 'Carte' ? params[:carte ]: params[:carte_item]
  end

end
