require 'rails_helper'

RSpec.describe "periods/new", type: :view do
  before(:each) do
    assign(:period, Period.new(
      :name => "MyString"
    ))
  end

  it "renders new period form" do
    render

    assert_select "form[action=?][method=?]", periods_path, "post" do

      assert_select "input#period_name[name=?]", "period[name]"
    end
  end
end
