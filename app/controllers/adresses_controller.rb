class AdressesController < ApplicationController
  before_action :set_adress, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all

  # GET /adresses
  def index
    @adresses = Adresse.all
  end

  # GET /adresses/1
  def show
  end

  # GET /adresses/new
  def new
    @adress = Adresse.new
  end

  # GET /adresses/1/edit
  def edit
  end

  # POST /adresses
  def create
    @adress = Adresse.new(adress_params)

    if @adress.save
      redirect_to @adress, notice: 'Adresse was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /adresses/1
  def update
    if @adress.update(adress_params)
      redirect_to @adress, notice: 'Adresse was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /adresses/1
  def destroy
    @adress.destroy
    redirect_to adresses_url, notice: 'Adresse was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adress
      @adress = Adresse.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def adress_params
      params.require(:adresse).permit(:name, :departement_id)
    end
end
