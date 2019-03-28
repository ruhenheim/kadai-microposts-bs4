# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Faker::Config.locale = :ja

# ダミーユーザ用アカウントと、そのテストデータ
10.times do |c|
  user = User.create(
            name: Faker::Name.name,
            email: Faker::Internet.email,
            password: "test"
          )
  100.times do |m|
    user.microposts.create(content: Faker::Lorem.sentence)
  end
end
