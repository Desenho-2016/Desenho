require 'rails_helper'

RSpec.describe "graphics/new", type: :view do
  before(:each) do
    assign(:graphic, Graphic.new())
  end

  it "renders new graphic form" do
    render

    assert_select "form[action=?][method=?]", graphics_path, "post" do
    end
  end
end
