require 'rails_helper'

RSpec.describe "alugueis/show", type: :view do
  before(:each) do
    assign(:aluguel, Aluguel.create!(
      bike: nil,
      ponto: nil,
      forma_pagamento: "Forma Pagamento"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Forma Pagamento/)
  end
end
