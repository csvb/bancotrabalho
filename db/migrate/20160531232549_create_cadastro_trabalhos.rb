class CreateCadastroTrabalhos < ActiveRecord::Migration
  def change
    create_table :cadastro_trabalhos do |t|
      t.string :titulo
      t.string :nome
      t.date :data
      t.string :arquivo

      t.timestamps null: false
    end
  end
end
