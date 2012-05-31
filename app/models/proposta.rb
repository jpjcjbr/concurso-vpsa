class Proposta < ActiveRecord::Base
  attr_accessible :descricao, :desenvolvedores, :email, :titulo, :objetivo, :plataforma, :status
  
  validates_presence_of :descricao
  validates_presence_of :desenvolvedores
  validates_presence_of :email
  validates_presence_of :titulo
  validates_presence_of :objetivo
  validates_presence_of :plataforma
end
