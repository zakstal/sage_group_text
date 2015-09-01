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
