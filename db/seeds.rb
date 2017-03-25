# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ title: 'Star Wars' }, { title: 'Lord of the Rings' }])
#   Character.create(title: 'Luke', movie: movies.first)
Skill.destroy_all
 skills_attributes = [


100.times do
  Skill.create(
    title: Faker::Demographic.race,
    content: Faker::ChuckNorris.fact
      )
end

  t.string   "title"
  t.text     "brief"
  t.integer  "price"
  t.string   "location"
  t.string   "skills_category"
  t.text     "description"
  t.integer  "user_id"

  {
  # photos: "https://unsphash.it/250/150",
  title: "I will finish your wordpress site",
  price: 1000,
  brief: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod",
  location: "Hanalulu",
  skills_category: "Coding",
  description: "Set up your wordpress site in less then 24 hours"
  },

  {
  # photos: "https://unsphash.it/250/150",
  title: "I will sing you to sleep like a creep",
  price: 5,
  brief: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod",
  location: "3610 Merrick St. Houston, Texas, 77025",
  skills_category: "Music",
  description: "sing you to sleep like a total creep"
  },

  {
  # photos: "https://unsphash.it/250/150",
  title: "I will design your personal logo",
  price: 30,
  brief: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod",
  location: "New York",
  skills_category: "design",
  description: "Design a logo for you own personal branding"
  },

    {
  # photos: "https://unsphash.it/250/150",
  title: "I will Dance till the break of down with you",
  price: 30000,
  brief: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod",
  location: "Tokyo",
  skills_category: "Dance",
  description: "Anywhere in Tokyo, all night long"
  },

    {
  # photos: "https://unsphash.it/250/150",
  title: "I will Dance code you an amazing rails app in 2 hours",
  price: 3000000,
  brief: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod",
  location: "Juana manso 1152, ciudad autonoma de buenos aires, argentina",
  skills_category: "Coding",
  description: "code you a bad ass website"
  },
     {
  # photos: "https://unsphash.it/250/150",
  title: "I will design 5 logos in 1 hours",
  price: 50000,
  brief: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod",
  location: "89 Taixing Road, JingAn, Shanghai",
  skills_category: "Design",
  description: "I will make amazing logos. sit down and shut up"
  }


 ]

skills_attributes.each { |params| Skill.create(params) }
