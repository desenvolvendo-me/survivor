require 'rails_helper'

RSpec.describe "survivors/new", type: :view do
  before(:each) do
    assign(:survivor, Survivor.new(
      name: "MyString",
      age: 1,
      city: City.create(description: "MyString", uf: "Uf"),
      gender: "MyString",
      root: true
    ))
  end

  it "renders new survivor form" do
    render

    assert_select "form[action=?][method=?]", survivors_path, "post" do
      assert_select "input[name=?]", "survivor[name]"
      assert_select "input[name=?]", "survivor[age]"
      assert_select "select[name=?]", "survivor[city_id]"
      assert_select "input[name=?]", "survivor[gender]"
      assert_select "input[name=?]", "survivor[root]"
    end
  end
end
