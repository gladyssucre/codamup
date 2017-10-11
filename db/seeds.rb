Category.destroy_all
User.destroy_all

drinks = Category.create(name: "Drinks")
dinner = Category.create(name: "Dinner")
movies = Category.create(name: "Movies")

gladys = User.create(
  email: 'gladys.sucre@outlook.com',
  password: '123456'
)
miriam = User.create(email: "miriam@codaisseurbnb.com", password: "abcd1234")
wouter = User.create(email: "wouter@codaisseurbnb.com", password: "abcd1234")
matt = User.create(email: "matt@codaisseurbnb.com", password: "abcd1234")


Event.create!(
  name: "House",
  description: "Normcore meh put a bird on it man braid mumblecore, locavore synth swag kogi helvetica ugh health goth twee raw denim readymade. Freegan yuccie everyday carry tote bag you probably haven't heard of them godard. Meditation tattooed lumbersexual street art truffaut pour-over, kale chips pitchfork. Readymade snackwave man bun, photo booth tilde wolf occupy fashion axe VHS authentic PBR&B typewriter. Vape everyday carry meditation try-hard hammock unicorn.",
  location: "Colon 58, 1B, 11100 Cadiz (Spain)",
  price: 100,
  capacity: 50,
  includes_food: true,
  includes_drink: true,
  starts_at: DateTime.now+1,
  end_at: DateTime.now+2,
  active: true,
  user: gladys,
  categories: [dinner]
)

Event.create!(
  name: "It",
  description: "Normcore meh put a bird on it man braid mumblecore, locavore synth swag kogi helvetica ugh health goth twee raw denim readymade. Freegan yuccie everyday carry tote bag you probably haven't heard of them godard. Meditation tattooed lumbersexual street art truffaut pour-over, kale chips pitchfork. Readymade snackwave man bun, photo booth tilde wolf occupy fashion axe VHS authentic PBR&B typewriter. Vape everyday carry meditation try-hard hammock unicorn.",
  location: "Colon 58, 1B, 11100 Cadiz (Spain)",
  price: 100,
  capacity: 50,
  includes_food: true,
  includes_drink: true,
  starts_at: DateTime.now+1,
  end_at: DateTime.now+2,
  active: true,
  user: wouter,
  categories: [dinner, movies]
)
