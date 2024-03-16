# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all
Item.destroy_all
User.destroy_all


100.times do |i|
    password = "password-#{i}"
    User.create!(username: "username#{i}",email: "user-#{i}@acme.com", password: "password-#{i}", password_confirmation: password)
end

user_ids = User.pluck(:id)

100.times do |i|
    Item.create!(title: "item-#{1}", description: "null false", user_id: user_ids.sample)
end

item_ids = Item.pluck(:id)

100.times do |i|
    Comment.create!(body: "Comment number #{i}", user_id: user_ids.sample, item_id: item_ids.sample)
end