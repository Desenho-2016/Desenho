require 'rails_helper'

RSpec.describe "disciplines/show", type: :view do
  before(:each) do
    @discipline = assign(:discipline, Discipline.create!(
      :name => "Name",
      :amount_credits => 2,
      :teacher => nil,
      :period => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
