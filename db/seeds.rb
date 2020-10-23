# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

city = [City.create(city_name: "Paris"), City.create(city_name: "Montpellier"), City.create(city_name: "Nantes"), City.create(city_name: "Bordeaux")]
array_dogsitter = []
array_dog = []

10.times do
  array_dogsitter << Dogsitter.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name, city: city.sample)
  array_dog << Dog.create(dog_name: Faker::Superhero.name, city: city.sample)
end

25.times do
  strolls = Stroll.create(dog: array_dog.sample, dogsitter: array_dogsitter.sample)
end

