require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:user) { create(:user) }
  let(:question) { create(:question, user: user) }
  let(:answer) { build(:answer, question_id: question.id, answerable_id: question.id, answerable_type: 'Question', user_id: user.id) }

  context 'validation tests' do
    it 'ensures question attrs presence' do
      expect(answer.valid?).to be_truthy
    end

    it 'creates new answer' do
      expect{ Answer.create(JSON.parse(answer.to_json)) }.to change { Answer.count }.by(1)
    end
  end
end
