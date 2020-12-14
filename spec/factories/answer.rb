require 'faker'

FactoryBot.define do
  factory :answer do
    answer { Faker::Name.name }
    user_id { Faker::Number.within(range: 1..10) }
    question_id { Faker::Number.within(range: 1..10) }
    answerable_id { Faker::Number.within(range: 1..10) }
    answerable_type { ['Question', 'Answer'].sample }

    trait :for_answerable do
      association(:answerable, factory: :answer)
    end
  end
end
