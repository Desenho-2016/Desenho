require 'rails_helper'

RSpec.describe "mentions/edit", type: :view do
  before(:each) do
    @mention = assign(:mention, Mention.create!(
      :value => "MyString",
      :discipline => nil
    ))
  end

  it "renders the edit mention form" do
    render

    assert_select "form[action=?][method=?]", mention_path(@mention), "post" do

      assert_select "input#mention_value[name=?]", "mention[value]"

      assert_select "input#mention_discipline_id[name=?]", "mention[discipline_id]"
    end
  end
end
