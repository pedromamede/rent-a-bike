require 'rails_helper'

RSpec.describe "alugueis/index", type: :view do
  before(:each) do
    assign(:alugueis, [
      Aluguel.create!(
        bike: nil,
        ponto: nil,
        forma_pagamento: "Forma Pagamento"
      ),
      Aluguel.create!(
        bike: nil,
        ponto: nil,
        forma_pagamento: "Forma Pagamento"
      )
    ])
  end

  it "renders a list of alugueis" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Forma Pagamento".to_s), count: 2
  end
end
