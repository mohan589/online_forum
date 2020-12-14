require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do
  let!(:user) { create(:user) }
  let!(:question) { build(:question) }

  describe "POST #save" do
    login_admin

    let(:request_params) do
      {
        question: {
          user_id: user.id,
          title: question.title,
          question_content: question.question_content
        }
      }
    end

    it "creates question and redirects to quetion path" do
      post :create, params: request_params
      expect(response.status).to eq(302)
    end

    it "retrives all questions" do
      get :index
      expect(response.status).to eq(200)
    end
  end
end
