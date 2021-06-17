# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting Old Data"
Category.delete_all 
Genre.delete_all
Media.delete_all
Platform.delete_all
User.delete_all


puts "Seeding User"
user1 = User.create(username: "Leo", prof_pic: 'https:leo.com', bio: "bio stuff", liked_media: "COD:MW2" )
user2 = User.create(username: "Nick", prof_pic: 'https:nick.com', bio: "bio stuff", liked_media: "SMASHBROS")

puts "Seeding Media"
media1 = Media.create(name: "COD:MW2", description: 'Guns and stuff', picture: 'https:guns.com')
media2 = Media.create(name: "SMASHBROS", description: 'Guns and stuff', picture: 'https:smashbros.com')

puts "Seeding Platform"
plat1 = Platform.create(name: "Hulu", user_id: user1.id,)
plat2 = Platform.create(name: "Netflix", user_id: user2.id,)

puts "Seeding Genre"
gen1 = Genre.create(name: 'Action', media_id: media1.id)
gen2 = Genre.create(name: 'Comedy', media_id: media2.id)

puts "Seeding Categories"
cat1 = Category.create(name: "Movies", platform_id: plat1.id, genre_id: gen1.id)
cat2 = Category.create(name: "Shows", platform_id: plat2.id, genre_id: gen2.id)



puts "Done seeding."

