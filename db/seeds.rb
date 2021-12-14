# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



ApplicationPet.destroy_all
Application.destroy_all
Pet.destroy_all
Shelter.destroy_all
@shelter = Shelter.create(name: 'Aurora shelter', city: 'Aurora, CO', foster_program: false, rank: 9)
@shelter_2 = Shelter.create(name: 'Boulder shelter', city: 'Boulder, CO', foster_program: false, rank: 9)
@pet_1 = Pet.create(adoptable: true, age: 1, breed: 'sphynx', name: 'Bare-y Manilow', shelter_id: @shelter.id)
@pet_2 = Pet.create(adoptable: true, age: 3, breed: 'doberman', name: 'Lobster', shelter_id: @shelter.id)
@pet_3 = Pet.create(adoptable: true, age: 1, breed: 'domestic shorthair', name: 'Sylvester', shelter_id: @shelter_2.id)
@pet_4 = Pet.create(adoptable: true, age: 1, breed: 'orange tabby shorthair', name: 'Lasagna', shelter_id: @shelter.id)



applications = [
  ["Applicant 1", "555 Turing st", "Aurora", "CO", "80016"],
  ["Applicant 2", "123 Turing st", "Denver", "CO", "80016"],
  ["Applicant 3", "777 Turing st", "Boulder", "CO", "80016"]
]

applications.each do |name, street_address, city, state, zip_code|
  Application.create(name: name , street_address: street_address, city: city, state: state, zip_code: zip_code)
end
