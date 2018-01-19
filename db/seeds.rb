Profile.destroy_all
Registration.destroy_all
Photo.destroy_all
Category.destroy_all
Event.destroy_all
User.destroy_all


sports_and_fitness = Category.create(name: "Sports and Fitness")
outdoors_and_adventures= Category.create(name: "Outdoors and Adventures")
tech = Category.create(name: "Tech")
writing = Category.create(name: "Writing")
music = Category.create(name: "Music")
film = Category.create(name: "Film")
family = Category.create(name: "Family")
food_and_drink= Category.create(name: "Food and Drink")

miriam = User.create(email: "miriam@codaisseurbnb.com", password: "abcd1234")
wouter = User.create(email: "wouter@codaisseurbnb.com", password: "abcd1234")
matt = User.create(email: "matt@codaisseurbnb.com", password: "abcd1234")
bla = User.create(email: 'bla@codaisseur.com',password: '123456')

event1 = Event.create(
  name: "Karate",
  location: "Haarlem",
  starts_at: Time.now,
  ends_at: 1.days.from_now,
  description: "A nice competition for everybody who had a couple of lessons of Karate",
  capacity: 50,
  includes_foods: false,
  includes_drinks: true,
  price: 20.0,
  active: true,
  user: matt,
  categories: [sports_and_fitness, family]
)


event2 = Event.create!(
  name: "Pancakes",
  location: "New York",
  starts_at: Time.now,
  ends_at: 1.days.from_now,
  description: "The best pancake cooks come together for a great family pancake tasting event!",
  capacity: 50,
  includes_foods: true,
  includes_drinks: true,
  price: 30.0,
  active: true,
  user: miriam,
  categories: [family, food_and_drink]
)


event3 = Event.create!(
  name: "Workshop of Shooting Films",
  location: "Almere",
  starts_at: Time.now,
  ends_at: 1.days.from_now,
  description: "A great way to start learning how to make your own movie and edit it.",
  capacity: 50,
  includes_foods: false,
  includes_drinks: true,
  price: 50.0,
  active: true,
  user: wouter,
  categories: [film, tech]
)


photo1 = Photo.create!(remote_image_url:"http://res.cloudinary.com/amiloudi/image/upload/v1516272579/karate_c809gr.jpg", event: event1)
photo2 = Photo.create!(remote_image_url:"http://res.cloudinary.com/amiloudi/image/upload/v1516272579/sportsandfitness_umljjr.jpg", event: event1)
photo3 = Photo.create!(remote_image_url:"http://res.cloudinary.com/amiloudi/image/upload/v1516272564/family_xm2nii.jpg", event: event2)
photo4 = Photo.create!(remote_image_url:"http://res.cloudinary.com/amiloudi/image/upload/v1516272564/foodanddrinks_cm8myb.jpg", event: event2)
photo5 = Photo.create!(remote_image_url:"http://res.cloudinary.com/amiloudi/image/upload/v1516272564/film_oo4iam.png", event: event3)
photo6 = Photo.create!(remote_image_url:"http://res.cloudinary.com/amiloudi/image/upload/v1516272579/tech_xkz4tb.jpg", event: event3)


Registration.create!()
Registration.create!()
Registration.create!()
