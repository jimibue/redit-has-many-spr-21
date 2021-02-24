# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


Sub.destroy_all
Topic.destroy_all

10.times do
  x = Faker::Verb.simple_present 
  y = Faker::Verb.ing_form 
  z = Faker::Verb.base
  s = Sub.create(name: "#{x}  #{z} #{y}")
  4.times do 
    # here we are using s which is a instance of Sub, it has an id
    s.topics.create(name: Faker::Verb.simple_present, body: Faker::Quote.famous_last_words)

    # does the same thing as above
    # Topic.create(sub_id: s.id, name: Faker::Verb.simple_present, body: Faker::Quote.famous_last_words)
  end
end
puts "seeded #{Sub.all.size} Subs"
puts "first sub name: #{Sub.first.name}"
puts "seeded #{Topic.all.size} Topic"
