# encoding: utf-8
class AddStatusProposta < ActiveRecord::Migration
  def up
    add_column :propostas, :status, :string, :default => 'Aguardando Aprovação'
    
  end

  def down
    remove_column :propostas, :status
  end
end