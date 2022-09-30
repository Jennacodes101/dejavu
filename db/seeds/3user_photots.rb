# this file adds photos to users
# through cloundiary/ acitve record
puts 'seeding user photos....'
jenna = User.find(1)
jenna.photo.attach(io: File.open('app/assets/images/dejavu_user_photos/Jenna.jpg'), filename: 'Jenna.jpg')
jenna.save!
puts 'seeding photo for user Jenna complete✅'
joaop = User.find(2)
joaop.photo.attach(io: File.open('app/assets/images/dejavu_user_photos/Joaop.jpeg'), filename: 'Joaop.jpeg')
joaop.save!
puts 'seeding photo for user Joao p. complete✅'
joaob = User.find(3)
joaob.photo.attach(io: File.open('app/assets/images/dejavu_user_photos/Joaob.jpeg'), filename: 'Joaob.jpeg')
joaob.save!
puts 'seeding photo for user Joao b. complete✅'
miguel = User.find(4)
miguel.photo.attach(io: File.open('app/assets/images/dejavu_user_photos/Miguel.jpeg'), filename: 'Miguel.jpeg')
miguel.save!
puts 'seeding photo for user Miguel. complete✅'
fernanda = User.find(5)
fernanda.photo.attach(io: File.open('app/assets/images/dejavu_user_photos/Fernanda.jpeg'), filename: 'Fernanda.jpeg')
fernanda.save!
puts 'seeding photo for user Fernanda. complete✅'
george = User.find(6)
george.photo.attach(io: File.open('app/assets/images/dejavu_user_photos/George.jpeg'), filename: 'George.jpeg')
george.save!
puts 'seeding photo for user George. complete✅'
filipe = User.find(7)
filipe.photo.attach(io: File.open('app/assets/images/dejavu_user_photos/Filipe.jpeg'), filename: 'Filipe.jpeg')
filipe.save!
puts 'seeding photo for user Filipe. complete✅'
hans = User.find(8)
hans.photo.attach(io: File.open('app/assets/images/dejavu_user_photos/Hans.jpeg'), filename: 'Hans.jpeg')
hans.save!
puts 'seeding photo for user Hans. complete✅'
stephen = User.find(9)
stephen.photo.attach(io: File.open('app/assets/images/dejavu_user_photos/Stephen.jpeg'), filename: 'Stephen.jpeg')
stephen.save!
puts 'seeding photo for user Stephen. complete✅'
diego = User.find(10)
diego.photo.attach(io: File.open('app/assets/images/dejavu_user_photos/Diego.jpeg'), filename: 'Diego.jpeg')
diego.save!
puts 'seeding photo for user Diego. complete✅'

puts"-------------"
puts "seeding photos for users COMPLETE ✅"
puts "------------"
