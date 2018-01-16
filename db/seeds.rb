User.destroy_all

bla = User.create!(
  email: 'bla@codaisseur.com',
  password: '123456'
)

Event.create!(
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
  user: bla
)
