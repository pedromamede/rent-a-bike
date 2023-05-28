class Aluguel < ApplicationRecord
  belongs_to :bike
  belongs_to :ponto
end
