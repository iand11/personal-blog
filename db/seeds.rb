# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


15.times do 
  Post.create(
    title: Faker::HarryPotter.character,
    body: Faker::Lorem.paragraph(2),
    pic_number: rand(0..1084)
    )
end 