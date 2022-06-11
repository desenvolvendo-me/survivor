require 'rails_helper'

RSpec.describe "survivors/show", type: :view do
  before(:each) do
    @survivor = assign(:survivor, Survivor.create!(
      name: "Name",
      age: 2,
      city: City.create(description: "MyString", uf: "Uf"),
      gender: "Gender"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Gender/)
  end
end
