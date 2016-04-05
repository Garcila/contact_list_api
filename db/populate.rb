require 'faker'

10.times do
  name = Faker::Superhero.name
  email = Faker::Superhero.power
  phone = Faker::StarWars.droid
  Contact.create(
    name: name,
    email: email,
    phone: phone
  )
end