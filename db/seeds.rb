# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.new(email: 'forum@gmail.com', password: 'secret')
user.save

q1 = Question.new(title: 'What is the meaning of Lorem ipsum?', question_content: 'Literally it does not mean anything. It is a sequence of words without a sense of Latin derivation that make up a text also known as filler text, fictitious, blind or placeholder', user_id: user.id)
q1.save

q2 = Question.new(title: 'Why is Lorem Ipsum Dolor used?', question_content: 'The Lorem Ipsum text is used to fill spaces designated to host texts that have not yet been published. They use programmers, graphic designers, typographers to get a real impression of the digital / advertising / editorial product they are working on.', user_id: user.id)
q2.save
