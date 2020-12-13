class CreateReservasCertos < ActiveRecord::Migration[6.0]
  def change
    create_table :reservas_certos do |t|
      t.string :fields
      t.string :user_id
      t.integer :formulario_id
      t.integer :maquina_id
      t.boolean :tecnico
      t.boolean :ativa

      t.timestamps
    end
  end
end
