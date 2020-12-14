require 'rails_helper'

RSpec.describe AnswersController, type: :controller do
  let!(:user) { create(:user) }
  let!(:question) { create(:question, user_id: user.try(:id)) }

  describe "POST #save" do
    login_admin

    let(:request_params) do
      {
        answer: {
          user_id: user.id,
          answer: question.title,
          answerable: question.id,
          answerable_type: 'Question'
        },
        question_id: question.id
      }
    end

    it "creates answer and redirects to quetion path" do
      post :create, params: request_params
      expect(response.status).to eq(302)
    end
  end
end
