# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
["Room", "Shared Room", "Entire Place"].each do |name|
    Type.find_or_create_by(name: name)
end

[["Bogota", "Colombia"],["New York", "USA"], ["Berlin", "Germany"] ].each do |loc|
    Location.find_or_create_by(city: loc.first, country: loc.last)
end