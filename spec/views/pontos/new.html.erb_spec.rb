require 'rails_helper'

RSpec.describe "pontos/new", type: :view do
  before(:each) do
    assign(:ponto, Ponto.new(
      image_url: "MyString",
      endereco: "MyText",
      horario: "MyString",
      link_maps: "MyString"
    ))
  end

  it "renders new ponto form" do
    render

    assert_select "form[action=?][method=?]", pontos_path, "post" do

      assert_select "input[name=?]", "ponto[image_url]"

      assert_select "textarea[name=?]", "ponto[endereco]"

      assert_select "input[name=?]", "ponto[horario]"

      assert_select "input[name=?]", "ponto[link_maps]"
    end
  end
end
