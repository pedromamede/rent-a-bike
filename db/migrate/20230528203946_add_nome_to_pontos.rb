class AddNomeToPontos < ActiveRecord::Migration[7.0]
  def change
    add_column :pontos, :nome, :string
  end
end
