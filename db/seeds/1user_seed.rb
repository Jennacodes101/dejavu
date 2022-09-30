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

User.create(email:'fernanda@test.com', password:'dejavulogin',
  username:'fernanda-freitas', birthday:'05/08/1999', first_name:'Fernanda',
  last_name:'Martinez', bio:'Im a UI/UX Designer who wants to be
  autonomous as a front-end developer as well. When I finish
  Le Wagons bootcamp I would like to be able to design interfaces,
  back and front-ends it 🚀' , city:'Lisboa, Portugal',
  phone_number:'+35962345654')

User.create(email:'george@test.com', password:'dejavulogin',
  username:'georgehfc', birthday:'06/07/1955', first_name:'George',
  last_name:'Chaves', bio:'Brazilian and Designer. Love glitches in the matrix.
  I have just hopped on the coding train and im excited to start building
  strange things' , city:'Lisboa, Portugal', phone_number:'+35962345654')

User.create(email:'filipe@test.com', password:'dejavulogin',
  username:'FilipeDias23', birthday:'03/05/1957', first_name:'Filipe',
  last_name:'Dias', bio:'Im currently working as an Aircraft maintenance
  Engineer at TAP airline, and my goal to this bootcamp is to change my
  carreer and achive my goals to became a full stack WebDeveloper',
  city:'Lisboa, Portugal', phone_number:'+35962345654')

User.create(email:'hans@test.com', password:'dejavulogin',
  username:'hans-bl', birthday:'03/05/2007', first_name:'Hans',
  last_name:'Bousquet-Lafond', bio:'French Copywriter living in Lisbon.
  Im currently working within the Growth Team of an Edtech Startup.
  Previously worked in fashion and banking startups.',
  city:'Lisboa, Portugal', phone_number:'+35962345654')

User.create(email:'stephen@test.com', password:'dejavulogin',
  username:'Stephenmcg123', birthday:'03/05/2000', first_name:'Stephen',
  last_name:'McGowan', bio:'A bit of everything including Sales, Operations
  Administration, working as an Electrician and English teaching. I want
  to switch careers and obtain a job in web development - backend or full stack.',
  city:'Madrid, Spain', phone_number:'+35962345654')

User.create(email:'diego@test.com', password:'dejavulogin',
  username:'dborjar', birthday:'03/05/2000', first_name:'Diego',
  last_name:'Borja', bio:'Madrid based Graphic Designer and multidisciplinary
  artist. Full-Stack Developer on the works. Techno-enthusiast and enthusiast
  of music as a whole.', city:'Madrid, Spain', phone_number:'+35962345654')

  if User.count != 10
    puts "USER COUNT ERROR, USER COUNT IS #{User.count}"
    exit(false)
  end



puts "user creation SUCCESS✅"
