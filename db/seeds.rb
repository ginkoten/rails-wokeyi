# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Skill.destroy_all
UserProfile.destroy_all
User.destroy_all

user = User.create({
  email: "gin@heidianer.com",
  password: "123456"
})

user_profile = UserProfile.create({
  user: user
})

skills_attributes = [{
  # photos: "https://unsphash.it/250/150",
  user: user,
  title: "I will finish your wordpress site",
  price: 1000,
  location: "Hanalulu",
  skills_category: "Coding",
  description: "Set up your wordpress site in less then 24 hours",
  brief: "This is a brief"
}, {
  # photos: "https://unsphash.it/250/150",
  user: user,
  title: "I will sing you to sleep like a creep",
  price: 5,
  location: "3610 Merrick St. Houston, Texas, 77025",
  skills_category: "Music",
  description: "sing you to sleep like a total creep",
  brief: "This is a brief"
}, {
  # photos: "https://unsphash.it/250/150",
  user: user,
  title: "I will design your personal logo",
  price: 30,
  location: "New York",
  skills_category: "design",
  description: "Design a logo for you own personal branding",
  brief: "This is a brief"
}, {
  # photos: "https://unsphash.it/250/150",
  user: user,
  title: "I will Dance till the break of down with you",
  price: 30000,
  location: "Tokyo",
  skills_category: "Dance",
  description: "Anywhere in Tokyo, all night long",
  brief: "This is a brief"
}, {
  # photos: "https://unsphash.it/250/150",
  user: user,
  title: "I will Dance code you an amazing rails app in 2 hours",
  price: 3000000,
  location: "Juana manso 1152, ciudad autonoma de buenos aires, argentina",
  skills_category: "Coding",
  description: "code you a bad ass website",
  brief: "This is a brief"
}, {
  # photos: "https://unsphash.it/250/150",
  user: user,
  title: "I will design 5 logos in 1 hours",
  price: 50000,
  location: "89 Taixing Road, JingAn, Shanghai",
  skills_category: "Design",
  description: "I will make amazing logos. sit down and shut up",
  brief: "This is a brief"
}]

# 100.times do
#   Skill.create(
#     # title: Faker::Demographic.race,
#     # content: Faker::ChuckNorris.fact
#   )
# end

# t.string   "name"
#     t.integer  "price"
#     t.string   "location"
#     t.string   "category"
#     t.text     "description",
#     t.integer  "user_id"

skills_attributes.each { |params| Skill.create(params) }
