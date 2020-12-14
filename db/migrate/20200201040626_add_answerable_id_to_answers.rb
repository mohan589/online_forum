class AddAnswerableIdToAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :answers, :answareble_id, :integer
    add_column :answers, :answerable_type, :string
    add_column :questions, :user_id, :integer
  end
end
