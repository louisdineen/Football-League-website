# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#welcome = Result.where(home: 'Crystal Palace').first
#welcome.delete(welcome) if welcome

results = Result.create([home: 'Crystal Palace', hg: 4, ag: 1, away: 'Leeds', time: '07/07/2020 15:00'])
result1 = Result.create([home: 'West Ham', hg: 0, ag: 0, away: 'Tottenham', time: '07/07/2020 15:00'])