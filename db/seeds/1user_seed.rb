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
  username:'divinebolt', birthday:'18/11/1979', first_name:'João',
  last_name:'Gonçalo',bio:'I have always been passionated for tech, computers,
  board games, and sushi🍣', city:'Lisboa, Portugal',
  phone_number:'+351123345654')

User.create(email:'miguel@test.com', password:'dejavulogin',
  username:'mifig', birthday:'01/01/1993', first_name:'Miguel',
  last_name:'Figueiredo',bio:'I am a recent graduate in Finance,
  eager to learn programming languages to be able to materialize
  my own ideas by creating products or services without the need
  to outsource those skills.', city:'Lisboa, Portugal',
  phone_number:'+35962345654')

  if User.count != 4
    puts "USER COUNT ERROR, USER COUNT IS #{User.count}"
    exit(false)
  end



puts "user creation SUCCESS✅"
