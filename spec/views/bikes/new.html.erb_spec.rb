require 'rails_helper'

RSpec.describe "bikes/new", type: :view do
  before(:each) do
    assign(:bike, Bike.new(
      modelo: "MyString",
      marca: "MyString",
      descricao: "MyText",
      valor_aluguel: 1.5
    ))
  end

  it "renders new bike form" do
    render

    assert_select "form[action=?][method=?]", bikes_path, "post" do

      assert_select "input[name=?]", "bike[modelo]"

      assert_select "input[name=?]", "bike[marca]"

      assert_select "textarea[name=?]", "bike[descricao]"

      assert_select "input[name=?]", "bike[valor_aluguel]"
    end
  end
end
