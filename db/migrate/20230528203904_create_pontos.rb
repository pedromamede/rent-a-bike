class CreatePontos < ActiveRecord::Migration[7.0]
  def change
    create_table :pontos do |t|
      t.string :image_url
      t.text :endereco
      t.string :horario
      t.string :link_maps

      t.timestamps
    end
  end
end
