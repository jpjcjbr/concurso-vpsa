class Proposta < ActiveRecord::Base
  attr_accessible :descricao, :desenvolvedores, :email, :titulo, :objetivo, :plataforma
end
