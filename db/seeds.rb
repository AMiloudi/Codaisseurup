Category.destroy_all
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

Event.create(
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


Event.create!(
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


Event.create!(
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
