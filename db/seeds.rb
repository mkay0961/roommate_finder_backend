# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Recomandation.destroy_all
UserAttribute.destroy_all
Roommate.destroy_all


matthew = User.create(username: "mkay",
                      password: "123",
                      looking: false,
                      first_name: "Matthew",
                      last_name: "Kay",
                      profile_image: "nil",
                      description: "i am great")

aaron = User.create(username: "akay",
                      password: "123",
                      looking: true,
                      address: "Rockville, MD",
                      first_name: "Aaron",
                      last_name: "Kay",
                      profile_image: "nil",
                      description: "i am great")

syd = User.create(username: "skay",
                      password: "123",
                      looking: false,
                      first_name: "Sydney",
                      last_name: "Kay",
                      profile_image: "nil",
                      description: "i am great")


larry = User.create(username: "lkay",
                      password: "123",
                      looking: false,
                      first_name: "Larry",
                      last_name: "Kay",
                      profile_image: "nil",
                      description: "i am great")

meredith = User.create(username: "mrodnan",
                      password: "123",
                      looking: false,
                      first_name: "Meredith",
                      last_name: "Rodnan",
                      profile_image: "nil",
                      description: "i am great")

#matthew
Roommate.create(user_id: matthew.id,
                roommate_user_id: syd.id,
                current: true )

Roommate.create(user_id: matthew.id,
                roommate_user_id: larry.id,
                current: true )

Roommate.create(user_id: matthew.id,
                roommate_user_id: meredith.id,
                current: true )

Roommate.create(user_id: matthew.id,
                roommate_user_id: aaron.id,
                current: false )



#syd
Roommate.create(user_id: syd.id,
                roommate_user_id: matthew.id,
                current: true )

Roommate.create(user_id: syd.id,
                roommate_user_id: larry.id,
                current: true )

Roommate.create(user_id: syd.id,
                roommate_user_id: meredith.id,
                current: true )

Roommate.create(user_id: syd.id,
                roommate_user_id: aaron.id,
                current: false )
