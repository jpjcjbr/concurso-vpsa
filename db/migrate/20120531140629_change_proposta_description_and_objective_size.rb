class ChangePropostaDescriptionAndObjectiveSize < ActiveRecord::Migration
  def up
    change_column :propostas, :descricao, :text
    change_column :propostas, :objetivo, :text
  end

  def down
    change_column :propostas, :descricao, :string
    change_column :propostas, :objetivo, :string
  end
end
