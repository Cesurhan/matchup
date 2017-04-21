Profile.delete_all
Match.delete_all
User.delete_all

# admins
admin1 = User.create!(email: 'ces@matchup.com', password: 'qwe123', admin: true)
admin2 = User.create!(email: 'wouter@matchup.com', password: 'qwe123', admin: true)

puts "#{User.all.size} admins created"

# teachers
teacher1 = User.create!(email: 'arno@matchup.com', password: 'qwe123', teacher: true)
teacher2 = User.create!(email: 'miriam@matchup.com', password: 'qwe123', teacher: true)

puts "#{User.all.size} teachers created"

# students
student1 = User.create!(email: 'student1@matchup.com', password: 'qwe123')
student2 = User.create!(email: 'student2@matchup.com', password: 'qwe123')
student3 = User.create!(email: 'student3@matchup.com', password: 'qwe123')
student4 = User.create!(email: 'student4@matchup.com', password: 'qwe123')
student5 = User.create!(email: 'student5@matchup.com', password: 'qwe123')
student6 = User.create!(email: 'student6@matchup.com', password: 'qwe123')
student7 = User.create!(email: 'student7@matchup.com', password: 'qwe123')
student8 = User.create!(email: 'student8@matchup.com', password: 'qwe123')
student9 = User.create!(email: 'student9@matchup.com', password: 'qwe123')
student10 = User.create!(email: 'student10@matchup.com', password: 'qwe123')

puts "#{User.all.size} students created"


# matches
match1 = Match.create!(match_id: 6, user_id: student5.id, date: '2017-04-21')
match2 = Match.create!(match_id: 7, user_id: student6.id, date: '2017-04-21')
match3 = Match.create!(match_id: 8, user_id: student7.id, date: '2017-04-21')
match4 = Match.create!(match_id: 9, user_id: student8.id, date: '2017-04-21')
match5 = Match.create!(match_id: 10, user_id: student9.id, date: '2017-04-20')
match6 = Match.create!(match_id: 11, user_id: student5.id, date: '2017-04-19')
match7 = Match.create!(match_id: 7, user_id: student5.id, date: '2017-04-20')

puts "#{Match.all.size} matches created"
