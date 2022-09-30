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

gargula = Experience.find(7)
gargula.photo.attach(io: File.open('app/assets/images/seed_exp/gargula.jpeg'), filename: 'gargula.jpeg')
gargula.save!

parque = Experience.find(8)
parque.photo.attach(io: File.open('app/assets/images/seed_exp/parque.jpeg'), filename: 'parque.jpeg')
parque.save!

sailing = Experience.find(9)
sailing.photo.attach(io: File.open('app/assets/images/seed_exp/nigel.jpeg'), filename: 'nigel.jpeg')

galgo = Experience.find(10)
galgo.photo.attach(io: File.open('app/assets/images/seed_exp/galgo.jpeg'), filename: 'galgo.jpeg')

lewagon = Experience.find(11)
lewagon.photo.attach(io: File.open('app/assets/images/seed_exp/lewagon.jpeg'), filename: 'lewagon.jpeg')

levilla = Experience.find(12)
levilla.photo.attach(io: File.open('app/assets/images/seed_exp/levilla.jpeg'), filename: 'levilla.jpeg')

osteria = Experience.find(13)
osteria.photo.attach(io: File.open('app/assets/images/seed_exp/osteria.jpeg'), filename: 'osteria.jpeg')

surf = Experience.find(14)
surf.photo.attach(io: File.open('app/assets/images/seed_exp/surf.jpeg'), filename: 'surf.jpeg')

bar = Experience.find(15)
bar.photo.attach(io: File.open('app/assets/images/seed_exp/bar.jpeg'), filename: 'bar.jpeg')

gulbenkian = Experience.find(16)
gulbenkian.photo.attach(io: File.open('app/assets/images/seed_exp/gulbenkian.jpeg'), filename: 'gulbenkian.jpeg')

burmet = Experience.find(17)
burmet.photo.attach(io: File.open('app/assets/images/seed_exp/burmet.jpeg'), filename: 'burmet.jpeg')

# diego = Experience.find(18)
# diego.photo.attach(io: File.open('app/assets/images/seed_exp/diego.jpeg'), filename: 'diego.jpeg')

puts '--------'
puts 'experience photo seeding complete✅'
puts'----------'
