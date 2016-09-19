require 'rails_helper'

RSpec.describe "periods/index", type: :view do
  before(:each) do
    assign(:periods, [
      Period.create!(
        :name => "Name"
      ),
      Period.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of periods" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
