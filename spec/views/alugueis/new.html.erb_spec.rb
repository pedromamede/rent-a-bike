require 'rails_helper'

RSpec.describe "alugueis/new", type: :view do
  before(:each) do
    assign(:aluguel, Aluguel.new(
      bike: nil,
      ponto: nil,
      forma_pagamento: "MyString"
    ))
  end

  it "renders new aluguel form" do
    render

    assert_select "form[action=?][method=?]", alugueis_path, "post" do

      assert_select "input[name=?]", "aluguel[bike_id]"

      assert_select "input[name=?]", "aluguel[ponto_id]"

      assert_select "input[name=?]", "aluguel[forma_pagamento]"
    end
  end
end
