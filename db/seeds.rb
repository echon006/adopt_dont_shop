# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

applications = [
  ["Applicant 1", "555 Turing st", "Aurora", "CO", "80016"],
  ["Applicant 2", "123 Turing st", "Denver", "CO", "80016"],
  ["Applicant 3", "777 Turing st", "Boulder", "CO", "80016"]
]

applications.each do |name, street_address, city, state, zip_code|
  Application.create(name: name , street_address: street_address, city: city, state: state, zip_code: zip_code)
end
