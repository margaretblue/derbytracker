# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

league_list = [
  'Paris Rollergirls',
  'Berlin Bombshells',
  'Club Roller Nantes'
]

league_list.each do |name|
  League.create( name: name)
end

referee_list = [
  'Hans Off',
  'Zakk Attakk',
  'Doctor No-No'
]

referee_list.each do |name|
  Referee.create(name: name)
end
