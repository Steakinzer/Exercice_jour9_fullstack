# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
c1= City.create(name: "Paris")
c2= City.create(name: "Marseille")
c3= City.create(name: "Nantes")

d1 = Dog.create(race: "labrador", city: c1)
d2 = Dog.create(race: "chiuaua", city: c3)
d3 = Dog.create(race: "berger", city: c2)

p1 = Dogsitter.create(name: "Albert", city: c1)
p2 = Dogsitter.create(name: "Daniel", city: c2)
p3 = Dogsitter.create(name: "Pascal", city: c3)

s1 = Stroll.create(dog: d1, dogsitter: p1)
s2 = Stroll.create(dog: d1, dogsitter: p2)
s3 = Stroll.create(dog: d1, dogsitter: p3)
s4 = Stroll.create(dog: d2, dogsitter: p1)
s5 = Stroll.create(dog: d3, dogsitter: p3)