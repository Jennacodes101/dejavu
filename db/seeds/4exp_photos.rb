# This file seeds photo for experiences

puts 'now seeding photos for experiences...'

tentacion = Experience.find(1)
tentacion.photo.attach(io: File.open('app/assets/images/seed_exp/tacos.jpg'), filename: 'tacos.jpg')
tentacion.save!

juans = Experience.find(2)
juans.photo.attach(io: File.open('app/assets/images/seed_exp/juan.jpg'), filename: 'juan.jpg')
juans.save!

rastro = Experience.find(3)
rastro.photo.attach(io: File.open('app/assets/images/seed_exp/rastro.jpeg'), filename: 'rastro.jpeg')
rastro.save!

seagull = Experience.find(4)
seagull.photo.attach(io: File.open('app/assets/images/seed_exp/seagull.jpeg'), filename: 'seagull.jpeg')
seagull.save!

oceanario = Experience.find(5)
oceanario.photo.attach(io: File.open('app/assets/images/seed_exp/oceanario.jpeg'), filename: 'oceanario.jpeg')
oceanario.save!

biking = Experience.find(6)
biking.photo.attach(io: File.open('app/assets/images/seed_exp/belem.jpeg'), filename: 'belem.jpeg')
biking.save!

powwow = Experience.find(7)
powwow.photo.attach(io: File.open('app/assets/images/seed_exp/powwow.jpeg'), filename: 'powwow.jpeg')
powwow.save!

parque = Experience.find(8)
parque.photo.attach(io: File.open('app/assets/images/seed_exp/parque.jpeg'), filename: 'parque.jpeg')
parque.save!

sailing = Experience.find(9)
sailing.photo.attach(io: File.open('app/assets/images/seed_exp/nigel.jpeg'), filename: 'nigel.jpeg')

puts '--------'
puts 'experience photo seeding complete✅'
puts'----------'
