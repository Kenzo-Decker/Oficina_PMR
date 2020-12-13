class CreateFormularioCertos < ActiveRecord::Migration[6.0]
  def change
    create_table :formulario_certos do |t|
      t.varchar :data
      t.string :20
      t.varchar :departamento
      t.string :20
      t.string :nome_projeto
      t.string :tipo_projeto_string
      t.string :orientador
      t.integer :maquina
      t.bool :ferramentas_proprias
      t.bools :estado
      t.varchar :material
      t.varchar :desenho_peca

      t.timestamps
    end
  end
end
