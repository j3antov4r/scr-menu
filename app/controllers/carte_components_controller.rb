class CarteComponentsController < ApplicationController

  before_action :set_type, except: [:home] 

  before_action :set_carte_component, only: [:show, :edit, :update, :destroy]

  def home
  end

  def index
    @carte_components = type_class.all
  end

  def show
  end

  def new
    @carte_component = type_class.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
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

  def set_carte_component
    @carte_component = type_class.find(params[:id])
  end
end
