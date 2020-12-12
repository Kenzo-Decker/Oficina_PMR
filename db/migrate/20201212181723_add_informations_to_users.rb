class AddInformationsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :n_usp, :integer, null: false
    add_column :users, :telephone, :integer, null: false
    add_column :users, :role, :string, default: "aluno"
  end
end
