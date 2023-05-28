require 'rails_helper'

RSpec.describe "pontos/index", type: :view do
  before(:each) do
    assign(:pontos, [
      Ponto.create!(
        image_url: "Image Url",
        endereco: "MyText",
        horario: "Horario",
        link_maps: "Link Maps"
      ),
      Ponto.create!(
        image_url: "Image Url",
        endereco: "MyText",
        horario: "Horario",
        link_maps: "Link Maps"
      )
    ])
  end

  it "renders a list of pontos" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Image Url".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Horario".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Link Maps".to_s), count: 2
  end
end
