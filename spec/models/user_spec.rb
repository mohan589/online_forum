require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

  context 'validation tests' do
    it 'ensures question attrs presence' do
      expect(user.valid?).to be_truthy
    end

    it 'ensures question attrs presence' do
      user.email = nil
      expect(user).to_not be_valid
    end
  end
end
