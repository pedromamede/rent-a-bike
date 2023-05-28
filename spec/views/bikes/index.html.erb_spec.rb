require 'rails_helper'

RSpec.describe "bikes/index", type: :view do
  before(:each) do
    assign(:bikes, [
      Bike.create!(
        modelo: "Modelo",
        marca: "Marca",
        descricao: "MyText",
        valor_aluguel: 2.5
      ),
      Bike.create!(
        modelo: "Modelo",
        marca: "Marca",
        descricao: "MyText",
        valor_aluguel: 2.5
      )
    ])
  end

  it "renders a list of bikes" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Modelo".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Marca".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
  end
end
