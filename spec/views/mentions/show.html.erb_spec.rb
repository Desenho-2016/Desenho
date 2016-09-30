require 'rails_helper'

RSpec.describe "mentions/show", type: :view do
  before(:each) do
    @mention = assign(:mention, Mention.create!(
      :value => "Value",
      :discipline => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Value/)
    expect(rendered).to match(//)
  end
end
