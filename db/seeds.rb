# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Punch.create(punch_in: Time.now(), punch_out: Time.now() + 1.hour)
Punch.create(punch_in: Time.now() + 5.minutes, punch_out: Time.now() + 2.hours)
Punch.create(punch_in: Time.now() + 12.minutes, punch_out: Time.now() + 4.hours)