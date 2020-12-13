class CreateFormularioCertos < ActiveRecord::Migration[6.0]
  def change
    create_table :formulario_certos do |t|
      t.integer :data
      t.integer :departamento
      t.string :nome_projeto
      t.string :tipo_projeto_string
      t.string :orientador
      t.integer :maquina
      t.boolean :ferramentas_proprias
      t.boolean :estado
      t.string :material
      t.string :desenho_peca

      t.timestamps
    end
  end
end
