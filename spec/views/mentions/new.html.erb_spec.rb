require 'rails_helper'

RSpec.describe "mentions/new", type: :view do
  before(:each) do
    assign(:mention, Mention.new(
      :value => "MyString",
      :discipline => nil
    ))
  end

  it "renders new mention form" do
    render

    assert_select "form[action=?][method=?]", mentions_path, "post" do

      assert_select "input#mention_value[name=?]", "mention[value]"

      assert_select "input#mention_discipline_id[name=?]", "mention[discipline_id]"
    end
  end
end
