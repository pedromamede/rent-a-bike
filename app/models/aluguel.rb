class Aluguel < ApplicationRecord
  belongs_to :bike
  belongs_to :ponto

  validates :bike_id, :ponto_id, :hora_retirada, :forma_pagamento, presence: { message: "é obrigatório(a)" } 
end
