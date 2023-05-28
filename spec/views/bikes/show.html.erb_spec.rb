require 'rails_helper'

RSpec.describe "bikes/show", type: :view do
  before(:each) do
    assign(:bike, Bike.create!(
      modelo: "Modelo",
      marca: "Marca",
      descricao: "MyText",
      valor_aluguel: 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Modelo/)
    expect(rendered).to match(/Marca/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2.5/)
  end
end
