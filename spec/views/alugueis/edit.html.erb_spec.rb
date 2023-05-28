require 'rails_helper'

RSpec.describe "alugueis/edit", type: :view do
  let(:aluguel) {
    Aluguel.create!(
      bike: nil,
      ponto: nil,
      forma_pagamento: "MyString"
    )
  }

  before(:each) do
    assign(:aluguel, aluguel)
  end

  it "renders the edit aluguel form" do
    render

    assert_select "form[action=?][method=?]", aluguel_path(aluguel), "post" do

      assert_select "input[name=?]", "aluguel[bike_id]"

      assert_select "input[name=?]", "aluguel[ponto_id]"

      assert_select "input[name=?]", "aluguel[forma_pagamento]"
    end
  end
end
