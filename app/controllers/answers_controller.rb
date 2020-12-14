class AnswersController < ApplicationController
  before_action :find_answerable, only: [:create, :destroy]

  def create
    @answer = @answerable.answers.new(answer_params)
    @answer[:user_id] = current_user.id

    if @answer.save
      redirect_back fallback_location: root_path
    end
  end

  def destroy
    @answer = @answerable.answers.find(params["id"])
    @answer.destroy
    redirect_to question_path(@answerable)
  end

  private

  def find_answerable
    @answerable = Answer.find_by_id(params["id"]) if params["id"]
    @answerable = Answer.find_by_id(params["answer_id"]) if params["answer_id"]
    @answerable = Question.find_by_id(params["question_id"]) if params["question_id"]
  end

  def answer_params
    params.require(:answer).permit(:answer, :user_id)
  end
end
