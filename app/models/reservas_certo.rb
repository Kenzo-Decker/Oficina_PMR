class ReservasCerto < ApplicationRecord
    belongs_to :formulario_certo
    belongs_to :user

    def create
      formulario = Formulario_certo.find(params[:formulario_certo.id])
      @reservas_certo = @formulario_certo.items.build(formulario: formulario_certo)

      respond_to do |format|
        if @reservas_certo 
        format.html { redirect_to @line_item.formulario_certo, notice: 'Criado'}
        format.json {render :show, status: :created, location: @reservas_certo}
        else 
        format.html{render :new}
        format.json {render json: @line_item.errors, status: :unprocessable_entity}
        end
    end
end 
 end
