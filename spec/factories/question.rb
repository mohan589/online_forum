require 'faker'

FactoryBot.define do
  factory :question do
    title { Faker::Name.name }
    question_content { 'Literally it does not mean anything. It is a sequence of words without a sense of Latin derivation that make up a text also known as filler text, fictitious, blind or placeholder' }
  end
end
