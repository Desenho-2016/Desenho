require 'rails_helper'

RSpec.describe "graphics/index", type: :view do
  before(:each) do
    assign(:graphics, [
      Graphic.create!(),
      Graphic.create!()
    ])
  end

  it "renders a list of graphics" do
    render
  end
end
