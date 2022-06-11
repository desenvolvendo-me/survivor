require 'rails_helper'

RSpec.describe Survivor, type: :model do
  describe 'associations' do
    it { should belong_to(:city).optional }
  end

  describe 'validations' do
    it { should validate_presence_of(:age) }
    it { should validate_presence_of(:gender) }
  end
end
