# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create([{ title: 'Rails'}, { title: 'HTML'}, { title: 'PHP'}, { title: 'OOP'}])

tests = Test.create([{ title: 'Base in Rails', category_id: 1, level: 3 },
                     { title: 'Base in HTML', category_id: 2 },
                     { title: 'Base in PHP', category_id: 3, level: 2 },
                     { title: 'Pro in PHP', category_id: 3, level: 3 },
                     { title: 'Base in OOP', category_id: 4, level: 2 }])

questions = Question.create([{ body: 'Question 1', test_id: 1 },
                             { body: 'Question 2', test_id: 1 },
                             { body: 'Question 1', test_id: 2 },
                             { body: 'Question 2', test_id: 2 },
                             { body: 'Question 1', test_id: 3 },
                             { body: 'Question 2', test_id: 3 },
                             { body: 'Question 1', test_id: 4 },
                             { body: 'Question 2', test_id: 4 },
                             { body: 'Question 1', test_id: 5 },
                             { body: 'Question 2', test_id: 5 }])

answers = Answer.create([{ body: 'Yes', question_id: 1, correct: true },
                         { body: 'No', question_id: 1 },
                         { body: 'Yes', question_id: 2, correct: true },
                         { body: 'No', question_id: 2 },
                         { body: 'Yes', question_id: 3, correct: true },
                         { body: 'No', question_id: 3 },
                         { body: 'Yes', question_id: 4, correct: true },
                         { body: 'No', question_id: 4 },
                         { body: 'Yes', question_id: 5, correct: true },
                         { body: 'No', question_id: 5 },
                         { body: 'Yes', question_id: 6, correct: true },
                         { body: 'No', question_id: 6 },
                         { body: 'Yes', question_id: 7, correct: true },
                         { body: 'No', question_id: 7 },
                         { body: 'Yes', question_id: 8, correct: true },
                         { body: 'No', question_id: 8 },
                         { body: 'Yes', question_id: 9, correct: true },
                         { body: 'No', question_id: 9 },
                         { body: 'Yes', question_id: 10, correct: true },
                         { body: 'No', question_id: 10 }])

users = User.create([{ fullname: 'Administrator', role: 'admin' },
                     { fullname: 'Alex Leskov', role: 'user' },
                     { fullname: 'James Bond', role: 'user' }])

test_stats = TestStat.create([{ user_id: 2, test_id: 1 }, { user_id: 2, test_id: 2 }])