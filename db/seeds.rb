# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create!([{ title: 'Rails'}, { title: 'HTML'}, { title: 'PHP'}, { title: 'OOP'}])

tests = Test.create!([{ title: 'Base in Rails', category_id: categories[0].id, level: 3 },
                     { title: 'Base in HTML', category_id: categories[1].id },
                     { title: 'Base in PHP', category_id: categories[2].id, level: 2 },
                     { title: 'Pro in PHP', category_id: categories[2].id, level: 3 },
                     { title: 'Base in OOP', category_id: categories[3].id, level: 2 }])

questions = Question.create!([{ body: 'Question 1', test_id: tests[0].id },
                             { body: 'Question 2', test_id: tests[0].id },
                             { body: 'Question 1', test_id: tests[1].id },
                             { body: 'Question 2', test_id: tests[1].id },
                             { body: 'Question 1', test_id: tests[2].id },
                             { body: 'Question 2', test_id: tests[2].id },
                             { body: 'Question 1', test_id: tests[3].id },
                             { body: 'Question 2', test_id: tests[3].id },
                             { body: 'Question 1', test_id: tests[4].id },
                             { body: 'Question 2', test_id: tests[4].id }])

answers = Answer.create!([{ body: 'Yes', question_id: questions[0].id, correct: true },
                         { body: 'No', question_id: questions[0].id },
                         { body: 'Yes', question_id: questions[1].id, correct: true },
                         { body: 'No', question_id: questions[1].id },
                         { body: 'Yes', question_id: questions[2].id, correct: true },
                         { body: 'No', question_id: questions[2].id },
                         { body: 'Yes', question_id: questions[3].id, correct: true },
                         { body: 'No', question_id: questions[3].id },
                         { body: 'Yes', question_id: questions[4].id, correct: true },
                         { body: 'No', question_id: questions[4].id },
                         { body: 'Yes', question_id: questions[5].id, correct: true },
                         { body: 'No', question_id: questions[5].id },
                         { body: 'Yes', question_id: questions[6].id, correct: true },
                         { body: 'No', question_id: questions[6].id },
                         { body: 'Yes', question_id: questions[7].id, correct: true },
                         { body: 'No', question_id: questions[7].id },
                         { body: 'Yes', question_id: questions[8].id, correct: true },
                         { body: 'No', question_id: questions[8].id },
                         { body: 'Yes', question_id: questions[9].id, correct: true },
                         { body: 'No', question_id: questions[9].id }])

users = User.create!([{ fullname: 'Administrator', role: 'admin' },
                     { fullname: 'Alex Leskov', role: 'user' },
                     { fullname: 'James Bond', role: 'user' }])

test_stats = TestStat.create!([{ user_id: users[1].id, test_id: tests[0].id },
                              { user_id: users[1].id, test_id: tests[1].id },
                              { user_id: users[1].id, test_id: tests[3].id }])