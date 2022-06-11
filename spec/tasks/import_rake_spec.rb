# ./spec/tasks/foo_task_spec.rb
require 'rails_helper'

Rails.application.load_tasks

describe "Import" do
  it "cities" do
    Rake::Task["import:cities"].invoke

    expect(City.count).to eq(5570)
  end
end