# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Installers
20.times do
  Installer.create(
    name: Faker::Company.name, 
    active: Faker::Boolean.boolean(true_ratio: 0.8),
    country: Installer.countries.keys.sample,
    pricing: Installer.pricings.keys.sample
  )
end

# Customers
5.times do 
  customer = Customer.create(
    name: Faker::Name.name, 
    email: Faker::Internet.email
  )
end