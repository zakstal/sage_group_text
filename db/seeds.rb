# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
[:second, :minute, :hour, :day, :week, :month].each do |period|
  FrequencyPeriod.create(name: period)
end

ClockworkDatabaseEvents.create!(frequency_quantity: 1, frequency_period_id: 2, user_id: 1)


User.create!(name: "zak", phone: "12068532262", email: "zakstal@gmail.com")
User.create!(name: "KC", phone: "15108593783", email: "jacquelinesoderstrom@gmail.com")

Group.create!(name: "sage", message: "sage?")

Subscription.create!(user_id: 1, group_id: 1)
Subscription.create!(user_id: 2, group_id: 1)