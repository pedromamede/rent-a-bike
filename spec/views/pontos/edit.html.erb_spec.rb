require 'rails_helper'

RSpec.describe "pontos/edit", type: :view do
  let(:ponto) {
    Ponto.create!(
      image_url: "MyString",
      endereco: "MyText",
      horario: "MyString",
      link_maps: "MyString"
    )
  }

  before(:each) do
    assign(:ponto, ponto)
  end

  it "renders the edit ponto form" do
    render

    assert_select "form[action=?][method=?]", ponto_path(ponto), "post" do

      assert_select "input[name=?]", "ponto[image_url]"

      assert_select "textarea[name=?]", "ponto[endereco]"

      assert_select "input[name=?]", "ponto[horario]"

      assert_select "input[name=?]", "ponto[link_maps]"
    end
  end
end
