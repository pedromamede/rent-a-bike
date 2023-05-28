require 'rails_helper'

RSpec.describe "pontos/show", type: :view do
  before(:each) do
    assign(:ponto, Ponto.create!(
      image_url: "Image Url",
      endereco: "MyText",
      horario: "Horario",
      link_maps: "Link Maps"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Image Url/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Horario/)
    expect(rendered).to match(/Link Maps/)
  end
end
