require 'rails_helper'

RSpec.describe "bikes/edit", type: :view do
  let(:bike) {
    Bike.create!(
      modelo: "MyString",
      marca: "MyString",
      descricao: "MyText",
      valor_aluguel: 1.5
    )
  }

  before(:each) do
    assign(:bike, bike)
  end

  it "renders the edit bike form" do
    render

    assert_select "form[action=?][method=?]", bike_path(bike), "post" do

      assert_select "input[name=?]", "bike[modelo]"

      assert_select "input[name=?]", "bike[marca]"

      assert_select "textarea[name=?]", "bike[descricao]"

      assert_select "input[name=?]", "bike[valor_aluguel]"
    end
  end
end
