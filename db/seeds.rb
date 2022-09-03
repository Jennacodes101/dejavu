
puts 'deleting data🗑 ....'
User.destroy_all
Experience.destroy_all
puts 'delete SUCCESS✅'

puts 'seeding users ....'

Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].each do |seed|
  load seed
end

puts '-------------'
puts 'seeding COMPLETE ✅✅✅'
puts 'goodbye'
puts '-------------'
