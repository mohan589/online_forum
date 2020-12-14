require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:user) { create(:user) }
  let(:question) { build(:question) }

  context 'validation tests' do
    it 'ensures question attrs presence' do
      question[:user_id] = user.try(:id)
      expect(question.valid?).to be_truthy
    end

    it 'ensures question attrs presence' do
      expect(question).to_not be_valid
    end
  end
end
