class OuvriersController < ApplicationController
  before_action :set_ouvrier, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all
layout 'general-layout'
  # GET /ouvriers
  def index
    @ouvriers = Ouvrier.all
  end

  # GET /ouvriers/1
  def show
  end

  # GET /ouvriers/new
  def new
    @ouvrier = Ouvrier.new
  end

  # GET /ouvriers/1/edit
  def edit
  end

  # POST /ouvriers
  def create
    @ouvrier = Ouvrier.new(ouvrier_params)

    if @ouvrier.save
      redirect_to @ouvrier, notice: 'Ouvrier was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /ouvriers/1
  def update
    if @ouvrier.update(ouvrier_params)
      redirect_to @ouvrier, notice: 'Ouvrier was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /ouvriers/1
  def destroy
    @ouvrier.destroy
    redirect_to ouvriers_url, notice: 'Ouvrier was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ouvrier
      @ouvrier = Ouvrier.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ouvrier_params
      params.require(:ouvrier).permit(:name, :prenom, :telephone)
    end
end