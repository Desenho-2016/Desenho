require 'rails_helper'

RSpec.describe "graphics/show", type: :view do
  before(:each) do
    @graphic = assign(:graphic, Graphic.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
