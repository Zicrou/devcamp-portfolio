class MainsdoeuvresController < ApplicationController
  before_action :set_mainsdoeuvre, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all
  layout 'general-layout'

  # GET /mainsdoeuvres
  def index
    @mainsdoeuvres = Mainsdoeuvre.all
  end

  # GET /mainsdoeuvres/1
  def show
  end

  # GET /mainsdoeuvres/new
  def new
    @mainsdoeuvre = Mainsdoeuvre.new
  end

  # GET /mainsdoeuvres/1/edit
  def edit
  end

  # POST /mainsdoeuvres
  def create
    @mainsdoeuvre = Mainsdoeuvre.new(mainsdoeuvre_params)

    if @mainsdoeuvre.save
      redirect_to @mainsdoeuvre, notice: 'Mainsdoeuvre was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /mainsdoeuvres/1
  def update
    if @mainsdoeuvre.update(mainsdoeuvre_params)
      redirect_to @mainsdoeuvre, notice: 'Mainsdoeuvre was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /mainsdoeuvres/1
  def destroy
    @mainsdoeuvre.destroy
    redirect_to mainsdoeuvres_url, notice: 'Mainsdoeuvre was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mainsdoeuvre
      @mainsdoeuvre = Mainsdoeuvre.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mainsdoeuvre_params
      params.require(:mainsdoeuvre).permit(:nom, :prenom, :telephone)
    end
end
