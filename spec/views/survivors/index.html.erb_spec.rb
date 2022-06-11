require 'rails_helper'

RSpec.describe "survivors/index", type: :view do
  before(:each) do
    assign(:survivors, [
      Survivor.create!(
        name: "Name",
        age: 2,
        state: "State",
        city: "City",
        gender: "Gender"
      ),
      Survivor.create!(
        name: "Name",
        age: 2,
        state: "State",
        city: "City",
        gender: "Gender"
      )
    ])
  end

  it "renders a list of survivors" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "State".to_s, count: 2
    assert_select "tr>td", text: "City".to_s, count: 2
    assert_select "tr>td", text: "Gender".to_s, count: 2
  end
end
