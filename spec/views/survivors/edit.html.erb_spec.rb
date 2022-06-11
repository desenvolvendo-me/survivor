require 'rails_helper'

RSpec.describe "survivors/edit", type: :view do
  before(:each) do
    @survivor = assign(:survivor, Survivor.create!(
      name: "MyString",
      age: 1,
      city: City.create(description: "MyString", uf: "Uf"),
      gender: "MyString",
      root: true
    ))
  end

  it "renders the edit survivor form" do
    render

    assert_select "form[action=?][method=?]", survivor_path(@survivor), "post" do

      assert_select "input[name=?]", "survivor[name]"
      assert_select "input[name=?]", "survivor[age]"
      assert_select "select[name=?]", "survivor[city_id]"
      assert_select "input[name=?]", "survivor[gender]"
      assert_select "input[name=?]", "survivor[root]"
    end
  end
end
