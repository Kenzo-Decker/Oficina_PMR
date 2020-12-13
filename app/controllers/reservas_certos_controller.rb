class ReservasCertosController < ApplicationController
  before_action :set_reservas_certo, only: [:show, :edit, :update, :destroy]

  # GET /reservas_certos
  # GET /reservas_certos.json
  def index
    @reservas_certos = ReservasCerto.all
  end

  # GET /reservas_certos/1
  # GET /reservas_certos/1.json
  def show
  end

  # GET /reservas_certos/new
  def new
    @reservas_certo = ReservasCerto.new
  end

  # GET /reservas_certos/1/edit
  def edit
  end

  # POST /reservas_certos
  # POST /reservas_certos.json
  def create
    @reservas_certo = ReservasCerto.new(reservas_certo_params)

    respond_to do |format|
      if @reservas_certo.save
        format.html { redirect_to @reservas_certo, notice: 'Reservas certo was successfully created.' }
        format.json { render :show, status: :created, location: @reservas_certo }
      else
        format.html { render :new }
        format.json { render json: @reservas_certo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservas_certos/1
  # PATCH/PUT /reservas_certos/1.json
  def update
    respond_to do |format|
      if @reservas_certo.update(reservas_certo_params)
        format.html { redirect_to @reservas_certo, notice: 'Reservas certo was successfully updated.' }
        format.json { render :show, status: :ok, location: @reservas_certo }
      else
        format.html { render :edit }
        format.json { render json: @reservas_certo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservas_certos/1
  # DELETE /reservas_certos/1.json
  def destroy
    @reservas_certo.destroy
    respond_to do |format|
      format.html { redirect_to reservas_certos_url, notice: 'Reservas certo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservas_certo
      @reservas_certo = ReservasCerto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reservas_certo_params
      params.require(:reservas_certo).permit(:fields, :user_id, :formulario_id, :maquina_id, :tecnico, :ativa)
    end
end
