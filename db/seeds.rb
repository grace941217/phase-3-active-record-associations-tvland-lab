puts "Destroying actors..."
Actor.destroy_all
10.times do 
    Actor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

puts "Destroying shows..."
Show.destroy_all
10.times do
    Show.create(name: Faker::Movie.title, day: Faker::Name.name, season: Faker::Name.name, genre: Faker::Name.name, network_id: Network.all.ids.sample)
end

puts "Destroying characters..."
Character.destroy_all
20.times do
    Character.create(name: Faker::Name.name, actor_id: Actor.all.ids.sample, show_id: Show.all.ids.sample, catchphrase: Faker::Quote.yoda)
end
