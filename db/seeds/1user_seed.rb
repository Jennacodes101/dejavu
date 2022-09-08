puts 'seeding users ....'

User.create(email:'jenna@test.com', password: 'dejavulogin', username:'GoJenna',
    first_name: 'Jenna', last_name:'Castillo',birthday: '28/05/1997',
    city: 'Philadelphia, USA', bio: 'I love traveling, exploring new cultures
    and trying new cusines 😍', phone_number: '+34647108688' )

User.create(email:'joaop@test.com', password:'dejavulogin',
  username:'urbanistyogi', birthday: '01/01/1995', city:'Lisboa, Portugal',
  first_name: 'João', last_name: 'Potes', bio:'I am an Architect and Urbanist
  driven by creative and visual thinking 🧠',phone_number: '+351123345678' )

User.create(email:'joaob@test.com', password:'dejavulogin',
  username:'divinebolt', birthday:'01/01/1993', first_name:'João',
  last_name:'Gonçalo',bio:'I have always been passionated for tech, computers,
  board games, and sushi🍣', city:'Lisboa, Portugal',
  phone_number:'+351123345654')

  if User.count != 3
    puts "USER COUNT ERROR, USER COUNT IS #{User.count}"
    exit(false)
  end



puts "user creation SUCCESS✅"
