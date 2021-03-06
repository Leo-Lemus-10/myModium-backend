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
user1 = User.create(username: "Leo", prof_pic: 'https://i.pinimg.com/originals/f9/05/73/f905738457b395c55a006374a374c01d.jpg', bio: "bio stuff", liked_media: "COD:MW2" )
user2 = User.create(username: "Nick", prof_pic: 'https://www.gannett-cdn.com/-mm-/922d2b148d08884af4eb6e238de29e3b5f149d5b/c=0-38-1999-2705/local/-/media/USATODAY/USATODAY/2014/03/11//1394552136000-Steve-Irwin.jpg', bio: "bio stuff", liked_media: "SMASHBROS")
user3 = User.create(username: "David", prof_pic: 'https://blog.ricksteves.com/wp-content/uploads/2020/06/106530763_10158664172517745_6170531021746111278_o.jpg', bio: "bio stuff", liked_media: "Mad Max:Fury Road")
user4 = User.create(username: "Barak", prof_pic: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTo9tzMKL4rG4wD9k7XvLRUSq7gsg1rdc7FxQ&usqp=CAU', bio: "bio stuff", liked_media: "Blazing Saddles")
user5 = User.create(username: "Yosef", prof_pic: 'https://pbs.twimg.com/profile_images/1311260959957307392/k0hIPsd5.jpg', bio: "bio stuff", liked_media: "Top Gear")
user6 = User.create(username: "Isaac", prof_pic: 'https://manoa.hawaii.edu/exploringourfluidearth/sites/default/files/styles/half-page-width/public/M1U6-SF%20Fig6.9-SirIsaacNewton.jpg?itok=GodCzVnu', bio: "bio stuff", liked_media: "Psych")

puts "Seeding Media"
media1 = Media.create(name: "COD:MW2", description: 'Guns and stuff', picture: 'https://upload.wikimedia.org/wikipedia/en/d/db/Modern_Warfare_2_cover.PNG')
media2 = Media.create(name: "SuperSmashBros", description: "Beat em' up", picture: 'https://cdn02.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_SuperSmashBrosUltimate_02_image1600w.jpg')
media3 = Media.create(name: "Blazing Saddles", description: 'Pew Pew', picture: 'https://images-na.ssl-images-amazon.com/images/I/71f1liZEL0L._SL1500_.jpg')
media4 = Media.create(name: "Top Gear", description: 'Zoom Zoom', picture: 'https://ichef.bbci.co.uk/images/ic/480xn/p097xy31.jpg')
media5 = Media.create(name: "Mad Max:Fury Road", description: 'The Boys are back in town', picture: 'https://i.pinimg.com/originals/8c/9f/a4/8c9fa4dc20e5ccaa9a52f1930986cbe4.jpg')
media6 = Media.create(name: "Psych", description: "You know that's right", picture: 'https://resizing.flixster.com/DB9yxX6mPk32VNGZk-khzmb4h54=/206x305/v1.dDsyNjcxMzU7ajsxODgxMzsxMjAwOzEzNjQ7MjA0Ng')

puts "Seeding Platform"
plat1 = Platform.create(name: "Playstation", user_id: user1.id,)
plat2 = Platform.create(name: "Nintendo", user_id: user2.id,)
plat3 = Platform.create(name: "Netflix", user_id: user3.id,)
plat4 = Platform.create(name: "Hulu", user_id: user4.id,)
plat5 = Platform.create(name: "Amazon", user_id: user5.id,)
plat6 = Platform.create(name: "PeacockTV", user_id: user6.id,)

puts "Seeding Genre"
gen1 = Genre.create(name: 'Sci-Fi', media_id: media1.id)
gen2 = Genre.create(name: 'Fighting', media_id: media2.id)
gen3 = Genre.create(name: 'Comedy', media_id: media3.id)
gen4 = Genre.create(name: 'Reality', media_id: media4.id)
gen5 = Genre.create(name: 'Action', media_id: media5.id)
gen6 = Genre.create(name: 'Mystery', media_id: media6.id)



puts "Seeding Categories"
cat1 = Category.create(name: "Simulators", platform_id: plat1.id, genre_id: gen1.id)
cat2 = Category.create(name: "Video Games", platform_id: plat2.id, genre_id: gen2.id)
cat3 = Category.create(name: "Movies", platform_id: plat3.id, genre_id: gen3.id)
cat4 = Category.create(name: "Podcasts", platform_id: plat4.id, genre_id: gen4.id)
cat5 = Category.create(name: "Books", platform_id: plat5.id, genre_id: gen5.id)
cat6 = Category.create(name: "TV Shows", platform_id: plat6.id, genre_id: gen6.id)




puts "Done seeding."

