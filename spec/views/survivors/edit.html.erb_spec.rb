require 'rails_helper'

RSpec.describe "survivors/edit", type: :view do
  before(:each) do
    @survivor = assign(:survivor, Survivor.create!(
      name: "MyString",
      age: 1,
      state: "MyString",
      city: "MyString",
      gender: "MyString"
    ))
  end

  it "renders the edit survivor form" do
    render

    assert_select "form[action=?][method=?]", survivor_path(@survivor), "post" do

      assert_select "input[name=?]", "survivor[name]"

      assert_select "input[name=?]", "survivor[age]"

      assert_select "input[name=?]", "survivor[state]"

      assert_select "input[name=?]", "survivor[city]"

      assert_select "input[name=?]", "survivor[gender]"
    end
  end
end
