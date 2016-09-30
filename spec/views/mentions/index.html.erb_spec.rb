require 'rails_helper'

RSpec.describe "mentions/index", type: :view do
  before(:each) do
    assign(:mentions, [
      Mention.create!(
        :value => "Value",
        :discipline => nil
      ),
      Mention.create!(
        :value => "Value",
        :discipline => nil
      )
    ])
  end

  it "renders a list of mentions" do
    render
    assert_select "tr>td", :text => "Value".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
