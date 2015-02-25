# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# clear out previous junk data
Player.delete_all

Country.delete_all

# create new fake players
mike = Player.create(
  name: 'Mike',
  title: 'Count',
  email: 'mike@example.com',
  password_digest: '$2a$10$d6x9wPVtTKyuWkRdx/BQIO8Asqcnpn4WpXJnuVKYOHGEPwv4Wd0mW'
  )

george = Player.create(
  name: 'George',
  title: 'Duke',
  email: 'george@example.com',
  password_digest: '$2a$10$d6x9wPVtTKyuWkRdx/BQIO8Asqcnpn4WpXJnuVKYOHGEPwv4Wd0mW'
  )

alex = Player.create(
  name: 'Alex',
  title: 'Lord',
  email: 'alex@example.com',
  password_digest: '$2a$10$d6x9wPVtTKyuWkRdx/BQIO8Asqcnpn4WpXJnuVKYOHGEPwv4Wd0mW'
  )

# create new fake countries

mikestan = Country.create(
  name: 'Mikestan',
  player_id: mike.id,
  flag: 'Jamaica.png',
  motto: 'We are number one',
  population: 5,
  employment: 10.0,
  tax_rate: 44.5,
  wealth: 2
  )

georgia = Country.create(
  name: 'Georgia',
  player_id: george.id,
  flag: 'Greenland.png',
  motto: 'Tastes great, less filling!',
  population: 72,
  employment: 80.1,
  tax_rate: 12.2,
  wealth: 3
  )

alexstates = Country.create(
  name: 'Alexstates',
  player_id: alex.id,
  flag: 'Maldives.png',
  motto: 'Looking for trouble!',
  population: 47,
  employment: 75.2,
  tax_rate: 44.4,
  wealth: 5
  )