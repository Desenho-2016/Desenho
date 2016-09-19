require 'rails_helper'

RSpec.describe "periods/edit", type: :view do
  before(:each) do
    @period = assign(:period, Period.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit period form" do
    render

    assert_select "form[action=?][method=?]", period_path(@period), "post" do

      assert_select "input#period_name[name=?]", "period[name]"
    end
  end
end
