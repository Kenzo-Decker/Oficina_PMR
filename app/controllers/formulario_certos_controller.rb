class FormularioCertosController < ApplicationController
  before_action :set_formulario_certo, only: [:show, :edit, :update, :destroy]

  # GET /formulario_certos
  # GET /formulario_certos.json
  def index
    @formulario_certos = FormularioCerto.all
  end

  # GET /formulario_certos/1
  # GET /formulario_certos/1.json
  def show
  end

  # GET /formulario_certos/new
  def new
    @formulario_certo = FormularioCerto.new
  end

  # GET /formulario_certos/1/edit
  def edit
  end

  # POST /formulario_certos
  # POST /formulario_certos.json
  def create
    @formulario_certo = FormularioCerto.new(formulario_certo_params)

    respond_to do |format|
      if @formulario_certo.save
        format.html { redirect_to @formulario_certo, notice: 'Formulario certo was successfully created.' }
        format.json { render :show, status: :created, location: @formulario_certo }
      else
        format.html { render :new }
        format.json { render json: @formulario_certo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formulario_certos/1
  # PATCH/PUT /formulario_certos/1.json
  def update
    respond_to do |format|
      if @formulario_certo.update(formulario_certo_params)
        format.html { redirect_to @formulario_certo, notice: 'Formulario certo was successfully updated.' }
        format.json { render :show, status: :ok, location: @formulario_certo }
      else
        format.html { render :edit }
        format.json { render json: @formulario_certo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formulario_certos/1
  # DELETE /formulario_certos/1.json
  def destroy
    @formulario_certo.destroy
    respond_to do |format|
      format.html { redirect_to formulario_certos_url, notice: 'Formulario certo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formulario_certo
      @formulario_certo = FormularioCerto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formulario_certo_params
      params.require(:formulario_certo).permit(:data, :20, :departamento, :20, :nome_projeto, :tipo_projeto_string, :orientador, :maquina, :ferramentas_proprias, :estado, :material, :desenho_peca)
    end
end
