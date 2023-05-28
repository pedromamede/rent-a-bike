class CreateBikes < ActiveRecord::Migration[7.0]
  def change
    create_table :bikes do |t|
      t.string :modelo
      t.string :marca
      t.text :descricao
      t.float :valor_aluguel

      t.timestamps
    end
  end
end
