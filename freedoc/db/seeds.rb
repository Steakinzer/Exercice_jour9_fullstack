# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Patient.destroy_all
Doctor.destroy_all
Appointment.destroy_all
City.destroy_all
Speciality.destroy_all
JoinTableSpecialityDoctor.destroy_all

s1 = Speciality.create(name: "Cariologue")
s2 = Speciality.create(name: "Pneumologue")
s3 = Speciality.create(name: "Pediatre")
c1 = City.create(name: "Brest")
c2 = City.create(name: "Paris")
c3 = City.create(name: "Toulon")
p1 = Patient.create(first_name: "Jones", last_name: "Jacques", city: c1)
p2 = Patient.create(first_name: "Pierre", last_name: "Paul", city: c2)
p3 = Patient.create(first_name: "Jones", last_name: "Jacques", city: c2)
d1 = Doctor.create(first_name: "Doctor", last_name: "Dolitel", zip_code: "67660", city: c3)
d2 = Doctor.create(first_name: "Patrick", last_name: "Labé", zip_code: "75012", city: c1)
d3 = Doctor.create(first_name: "Liber", last_name: "Pascal", zip_code: "88700", city: c2)
a1 = Appointment.create(date: Time.zone.now.to_datetime, doctor:d3, patient: p1, city: d3.city)
a2 = Appointment.create(date: Time.zone.now.to_datetime, doctor:d3, patient: p2, city: d3.city)
a3 = Appointment.create(date: Time.zone.now.to_datetime, doctor:d2, patient: p1, city: d2.city)

x1 = JoinTableSpecialityDoctor.create(doctor: d1, speciality:s1)
x2 = JoinTableSpecialityDoctor.create(doctor: d1, speciality:s2)
x3 = JoinTableSpecialityDoctor.create(doctor: d1, speciality:s3)
x4 = JoinTableSpecialityDoctor.create(doctor: d2, speciality:s1)
x5 = JoinTableSpecialityDoctor.create(doctor: d3, speciality:s3)
x6 = JoinTableSpecialityDoctor.create(doctor: d3, speciality:s2)

#Tapez JoinTableSpecialityDoctor.where(speciality: 18) pour voir tous les docteurs spécialisé dans le domaine avec l'id 18
#Tapez JoinTableSpecialityDoctor.where(doctor: 22) pour voir toutes les spécialités du docteur correspondant à l'id 22