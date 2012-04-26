class CreatePropostas < ActiveRecord::Migration
  def change
    create_table :propostas do |t|
      t.string :desenvolvedores
      t.string :email
      t.string :titulo
      t.string :objetivo
      t.string :descricao
      t.string :plataforma

      t.timestamps
    end
  end
end
