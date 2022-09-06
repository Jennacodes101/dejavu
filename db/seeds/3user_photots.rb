# this file adds photos to users
# through cloundiary/ acitve record
puts 'seeding user photos....'
jenna = User.find(1)
jenna.photo.attach(io: File.open('app/assets/images/dejavu_user_photos/jenna.jpg'), filename: 'Jenna.jpg')
jenna.save!
puts 'seeding photo for user jenna complete✅'
joaop = User.find(2)
joaop.photo.attach(io: File.open('app/assets/images/dejavu_user_photos/Joaop.jpeg'), filename: 'Joaop.jpeg')
joaop.save!
puts 'seeding photo for user Joao p. complete✅'
joaob = User.find(3)
joaob.photo.attach(io: File.open('app/assets/images/dejavu_user_photos/Joaob.jpeg'), filename: 'Joaob.jpeg')
joaob.save!
puts 'seeding photo for user Joao b. complete✅'
puts"-------------"
puts "seeding photos for users COMPLETE ✅"
puts "------------"
