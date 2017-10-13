Profile.destroy_all
Booking.destroy_all
Photo.destroy_all
Category.destroy_all
Event.destroy_all
User.destroy_all
#Categories
drinks = Category.create(name: "Drinks")
dinner = Category.create(name: "Dinner")
movies = Category.create(name: "Movies")
#Users
gladys = User.create(
  email: 'gladys.sucre@outlook.com',
  password: '123456'
)
miriam = User.create(email: "miriam@codaisseurbnb.com", password: "abcd1234")
wouter = User.create(email: "wouter@codaisseurbnb.com", password: "abcd1234")
matt = User.create(email: "matt@codaisseurbnb.com", password: "abcd1234")


#Photos
photo1 = Photo.create!(remote_image_url: "https://res.cloudinary.com/drp9nvz64/image/upload/t_media_lib_thumb/v1507818576/Amsterdam_ft26jx.jpg", event: event1)
photo2 = Photo.create!(remote_image_url: "https://res.cloudinary.com/drp9nvz64/image/upload/t_media_lib_thumb/v1507818327/DSC09727_pwskbn.jpg", event: event1)
photo3 = Photo.create!(remote_image_url: "https://res.cloudinary.com/drp9nvz64/image/upload/t_media_lib_thumb/v1507818327/DSC09535_t3hg4a.jpg", event: event2)

#events
event1= Event.create!(
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

event2= Event.create!(
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

## bookings

Booking.create!(event: event1, user: wouter, price: 50, total: 100, starts_at: 10.days.from_now, ends_at: 12.days.from_now)
Booking.create!(event: event1, user: matt, price: 50, total: 200, starts_at: 20.days.from_now, ends_at: 24.days.from_now)
