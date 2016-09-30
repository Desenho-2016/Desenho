require 'rails_helper'

RSpec.describe "disciplines/index", type: :view do
  before(:each) do
    assign(:disciplines, [
      Discipline.create!(
        :name => "Name",
        :amount_credits => 2,
        :teacher => nil,
        :period => nil
      ),
      Discipline.create!(
        :name => "Name",
        :amount_credits => 2,
        :teacher => nil,
        :period => nil
      )
    ])
  end

  it "renders a list of disciplines" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
