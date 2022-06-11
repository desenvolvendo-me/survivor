require 'rails_helper'

RSpec.describe "survivors/index", type: :view do
  before(:each) do
    assign(:survivors, [
      Survivor.create!(
        name: "Name",
        age: 2,
        city: City.create(description: "MyString", uf: "Uf"),
        gender: "Gender",
        root: true
      ),
      Survivor.create!(
        name: "Name",
        age: 2,
        city: City.create(description: "MyString", uf: "Uf"),
        gender: "Gender",
        root: false
      )
    ])
  end

  it "renders a list of survivors" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "MyString/Uf".to_s, count: 2
    assert_select "tr>td", text: "Gender".to_s, count: 2
    assert_select "tr>td", text: "true".to_s, count: 1
    assert_select "tr>td", text: "false".to_s, count: 1
  end
end
