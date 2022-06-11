require 'rails_helper'

RSpec.describe Survivor, type: :model do
  describe 'associations' do
    it { should belong_to(:city) }
  end

  describe 'validations' do
    xit { should validate_presence_of(:age) }
    xit { should validate_presence_of(:gender) }
  end
end
