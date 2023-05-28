class CreateAlugueis < ActiveRecord::Migration[7.0]
  def change
    create_table :alugueis do |t|
      t.references :bike, null: false, foreign_key: true
      t.references :ponto, null: false, foreign_key: true
      t.datetime :hora_retirada
      t.datetime :hora_devolucao
      t.string :forma_pagamento

      t.timestamps
    end
  end
end
