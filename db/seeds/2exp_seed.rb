# experiences data

name_seed = [
  'La Tentación taqueria',
  "Juan's Tailorshop",
  'El Rastro Market',
  'Seagull Method Cafe',
  'Oceanário de Lisboa',
  'Biking in Belem',
  'board games @ Pow Wow',
  'Parque Eduardo VII',
  'Sailing with Nigel'

]

description_seed = [
  'Best tacos in Madrid. In Mercado de San Fernando, You have to order. The Al Pastor and Cochinita Pibil!
  Also a Michalada!!',"Cheap tailor in the middle of La Latina. Ask for Juan, he
  hems pants for only 5€", "The best market in madrid. Every sunday from 8-2pm.
  It spans the whole neighborhood. Great place to buy vintage stuff and household
  goods!",'Crazy good brunch spot, they do not take reservations so be prepared
  to wait', 'expensive but worth it!','find a city bike and go! (watch for cars)',
  'the best board game cafe in Lisboa. Snacks are ok','good place to chill',
  'Great afternoon sailing! We went for the 2pm tour and even though the air temp was 36 degrees it was cool down on
  the water. Nigel and David were a great laugh and made sure the drink and food was flowing � …'
]

type_seed = ['food','service','market','food','museum', 'activity',
  'cafe', 'park','excursion']

address_seed = [
  'C. de Embajadores, 41, local 36, 28012 Madrid',
  'C. de Calatrava, 7, 28005 Madrid',
  '40.41086295424183, -3.7072753793356163','R. da Palmeira 23, 1200-311 Lisboa, Portugal',
  'Esplanada Dom Carlos I s/nº, 1990-005 Lisboa, Portugal',
  'Belem, lisboa, portugal','Rua Professor Fernando da Fonseca 19, 1600-660 Lisboa, Portugal',
  'Parque Eduardo VII, 1070-051 Lisboa, Portugal',
  'Doca de Santo Amaro, 1350-353 Lisboa, Portugal'
]

price_seed = [7,5.00, 0,15.50,20, 0, 10,0, 140.50]

userid_seed = [1, 1, 1, 2, 2, 2, 3, 3,3 ]

contact_seed = [
  '686633229','603666211','', '+351213421232',
  '+351218917000','','+351217524315', '','+351912024749'
  ]

url_seed= [
  'https://mercadodesanfernando.es/',
  'https://www.instagram.com/juantiendacostura/',
  'https://www.introducingmadrid.com/el-rastro',
  'https://www.instagram.com/seagullmethodcafe/',
  'http://www.oceanario.pt/','http://pow-wow.pt/',
  'http://www.cm-lisboa.pt/','http://www.sailingwithnigel.com/'


  ]

  city_seed = [
    'Madrid', 'Madrid', 'Madrid',
    'Lisboa', 'Lisboa', 'Lisboa',
    'Lisboa', 'Lisboa', 'Lisboa'
  ]

  country_seed = [
    'Spain', 'Spain', 'Spain',
    'Portugal', 'Portugal', 'Portugal',
    'Portugal', 'Portugal', 'Portugal'
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
