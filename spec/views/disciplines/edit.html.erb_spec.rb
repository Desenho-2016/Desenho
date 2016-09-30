require 'rails_helper'

RSpec.describe "disciplines/edit", type: :view do
  before(:each) do
    @discipline = assign(:discipline, Discipline.create!(
      :name => "MyString",
      :amount_credits => 1,
      :teacher => nil,
      :period => nil
    ))
  end

  it "renders the edit discipline form" do
    render

    assert_select "form[action=?][method=?]", discipline_path(@discipline), "post" do

      assert_select "input#discipline_name[name=?]", "discipline[name]"

      assert_select "input#discipline_amount_credits[name=?]", "discipline[amount_credits]"

      assert_select "input#discipline_teacher_id[name=?]", "discipline[teacher_id]"

      assert_select "input#discipline_period_id[name=?]", "discipline[period_id]"
    end
  end
end
