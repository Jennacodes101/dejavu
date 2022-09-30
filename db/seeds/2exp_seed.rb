# experiences data

name_seed = [
  'La Tentación taqueria',
  "Juan's Tailorshop",
  'El Rastro Market',
  'Seagull Method Cafe',
  'Oceanário de Lisboa',
  'Biking in Belem',
  'Gárgula Gaming',
  'Parque Eduardo VII',
  'Sailing with Nigel',
  'Parte Chão by Galgo',
  'Le Wagon - Lisboa',
  'Le Villa',
  'Osteria Cucina di Amici',
  'Surf na Costa da Caparica',
  'Bar TR3S Lisboa',
  'Garden of the Calouste Gulbenkian Foundation',
  'stephen',
  'diego'
]

description_seed = [
  'Best tacos in Madrid. In Mercado de San Fernando, You have to order. The Al Pastor and Cochinita Pibil!
  Also a Michalada!!',
  "Cheap tailor in the middle of La Latina. Ask for Juan, he
  hems pants for only 5€",
  "The best market in madrid. Every sunday from 8-2pm.
  It spans the whole neighborhood. Great place to buy vintage stuff and household
  goods!",
  'Crazy good brunch spot, they do not take reservations so be prepared
  to wait',
  'expensive but worth it!',
  'find a city bike and go! (watch for cars)',
  'Perfect place to visit if you love all kinds of games and want to have a cozy place to play them. The food is not bad, either!',
  'good place to chill',
  'Great afternoon sailing! We went for the 2pm tour and even though the air temp was 36 degrees it was cool down on
  the water. Nigel and David were a great laugh and made sure the drink and food was flowing � …',
  'Phenomenal band of music',
  'To Learn Software Engineering and Data Science on campus or online, this is the best Bootcamp by far - Has a great community, great teachers
  and the best students out there.',
  'Its a perfect place to spend quality time with friends and family.
  It got such a relaxed and calm atmosphere, which is due to both the design of
  the restaurant and the park where its located',
  'Divine traditional Italian restaurant. Delicious food in which good and fresh ingredients are used.
  Very welcoming atmosphere and friendly staff',
  'Surf academy in Costa da Caparica with the best lady coaches that i ever seen',
  'Always happy to visit one of my favorite bar!
  Friendly owners. Friendly staff. Nice crowd, always a good and relaxed atmosphere.
  They are also doing their best to create events like Lisbon Bear Pride.',
  'Tranquil urban gardens with walking paths, lakes, diverse birds and a cafe in a picturesque setting',
  'stephen',
  'diego'
]

type_seed = ['food','service','market','food','museum', 'activity',
  'cafe', 'park','excursion', 'nighlife', 'classes', 'food', 'food', 'activity',
  'nighlife', 'park', 'stephen', 'diego']

address_seed = [
  'Calle De Embajadores, 28045 Madrid, Espanha',
  'C. de Calatrava, 7, 28005 Madrid',
  '40.41086295424183, -3.7072753793356163',
  'R. da Palmeira 23, 1200-311 Lisboa, Portugal',
  'Esplanada Dom Carlos I, 1990-170 Lisboa, Portugal',
  'Belem, lisboa, portugal',
  'Rua José Galhardo, 1750-131 Lisboa, Distrito de Lisboa, Portugal',
  'Parque Eduardo VII, 1070-051 Lisboa, Portugal',
  'Doca de Santo Amaro, 1350-353 Lisboa, Portugal',
  'Largo Do Intendente Pina Manique, 1100-285 Lisboa, Distrito de Lisboa, Portugal',
  'Rua Do Conde De Redondo, 1150-102 Lisboa, Distrito de Lisboa, Portugal',
  'Campo Dos Mártires Da Pátria, 1150-225 Lisboa, Distrito de Lisboa, Portugal',
  'Rua Das Madres, 1200-712 Lisboa, Distrito de Lisboa, Portugal',
  'Costa da Caparica, Distrito de Setúbal, Portugal',
  'Rua Ruben A. Leitão, 1200-392 Lisboa, Distrito de Lisboa, Portugal',
  'Avenida De Berna, 1050-038 Lisboa, Distrito de Lisboa, Portugal',
  'stephen',
  'diego'
]

price_seed = [7,5.00, 0,15.50,20, 0, 10,0, 140.50, 15, 6000, 20, 20, 60, 0]

userid_seed = [1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 6, 7, 8, 9, 10]

contact_seed = [
  '686633229','603666211','', '+351213421232',
  '+351218917000','','+351217524315', '','+351912024749', '' , '', '', '',
   '', '', '', '', '']

url_seed= [
  'https://taquerialatentacion.com/',
  'https://mercadodesanfernando.es/',
  'https://www.instagram.com/juantiendacostura/',
  'https://www.introducingmadrid.com/el-rastro',
  'https://www.instagram.com/seagullmethodcafe/',
  'http://www.oceanario.pt/',
  'https://gargulagaming.pt/',
  'http://www.cm-lisboa.pt/',
  'http://www.sailingwithnigel.com/',
  'https://galgogalgogalgo.bandcamp.com/album/parte-ch-o',
  'https://www.lewagon.com/lisbon',
  'http://www.cm-lisboa.pt/',
  'http://www.osteria.pt/',
  'http://www.caparicasurfacademy.com/',
  'https://www.tr3slisboa.com/',
  'http://gulbenkian.pt/jardim/',
  'stephen',
  'diego'
  ]

  city_seed = [
    'Madrid', 'Madrid', 'Madrid',
    'Lisboa', 'Lisboa', 'Lisboa',
    'Lisboa', 'Lisboa', 'Lisboa',
    'Lisboa', 'Lisboa', 'Lisboa',
    'Lisboa', 'Lisboa', 'Lisboa',
    'Lisboa', 'Madrid', 'Madrid'
  ]

  country_seed = [
    'Spain', 'Spain', 'Spain',
    'Portugal', 'Portugal', 'Portugal',
    'Portugal', 'Portugal', 'Portugal',
    'Portugal', 'Portugal', 'Portugal',
    'Portugal', 'Portugal', 'Portugal',
    'Portugal', 'Spain', 'Spain'
  ]


#assure lengths are good

puts"seeding experiences for each user..."

#checking to see if inputs are all correct
#lengths_even?

name_seed.each_with_index do |name, num|
  exp = Experience.new(name: "#{name}", description: description_seed[num],
    exp_type: type_seed[num], address: address_seed[num],
    price: price_seed[num], user_id: userid_seed[num], contact: contact_seed[num],
  url: url_seed[num], city: city_seed[num], country: country_seed[num])

  puts "seeding #{exp.name}"
  exp.save!
  puts 'success'
end
