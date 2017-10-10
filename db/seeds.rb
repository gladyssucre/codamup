User.destroy_all

gladys = User.create!(
  email: 'gladys.sucre@outlook.com',
  password: '123456'
)

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
  user: gladys
)
