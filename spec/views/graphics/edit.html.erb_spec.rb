require 'rails_helper'

RSpec.describe "graphics/edit", type: :view do
  before(:each) do
    @graphic = assign(:graphic, Graphic.create!())
  end

  it "renders the edit graphic form" do
    render

    assert_select "form[action=?][method=?]", graphic_path(@graphic), "post" do
    end
  end
end
