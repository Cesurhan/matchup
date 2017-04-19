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
