require 'rails_helper'

RSpec.describe "survivors/new", type: :view do
  before(:each) do
    assign(:survivor, Survivor.new(
      name: "MyString",
      age: 1,
      state: "MyString",
      city: "MyString",
      gender: "MyString"
    ))
  end

  it "renders new survivor form" do
    render

    assert_select "form[action=?][method=?]", survivors_path, "post" do

      assert_select "input[name=?]", "survivor[name]"

      assert_select "input[name=?]", "survivor[age]"

      assert_select "input[name=?]", "survivor[state]"

      assert_select "input[name=?]", "survivor[city]"

      assert_select "input[name=?]", "survivor[gender]"
    end
  end
end
