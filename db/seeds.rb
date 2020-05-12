# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Tweet.delete_all 
User.destroy_all
users = User.all 

PASSWORD = 'abc'

super_user = User.create(
    first_name: 'andre',
    last_name: 'rondon',
    email: 'test@test.com',
    password: PASSWORD
)

10.times do
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    User.create(
        first_name: first_name,
        last_name: last_name,
        email: Faker::Internet.email,
        password: PASSWORD
    )
end



NUM_TWEETER = 100

NUM_TWEETER.times do 
    created_at = Faker::Date.backward(days: 365 * 5)
       Tweet.create(
            twitter:Faker::Nation.capital_city,
            tweet: Faker::Lorem.sentences,
            user: users.sample,    # to grab one user and of all fake users
            created_at: created_at,
            updated_at: created_at
        )
    
end



tweet = Tweet.all 

puts Cowsay.say("Generated #{tweet.count} Tweets", :frogs)