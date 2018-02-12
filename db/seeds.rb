# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

wallet_template = "A #adjective_1 man stole a #number_less_than_a_hundred-year-old woman’s wallet at a Dunkin’ Donuts in West Brighton. He used her credit cards to buy nearly $400 worth of #plural_noun_1 and #plural_noun_2. The suspect grabbed the wallet when the victim placed it on the #adjective_2 counter of the Forest Avenue Dunkin Donuts at 10 p.m. The next day, he made the rounds of #place_1 and #place_2 where he used her credit cards to buy #noun_3 and #noun_4, according to #persons_name_1. He is believed to be in his 20s."

#{adjective_1}
#{adjective_2}
#{number_less_than_a_hundred}
#{plural_noun_1}
#{plural_noun_2}
#{place_1}
#{place_2}
#{noun_3}
#{noun_4}
#{persons_name_1}



template1 = Template.create(title: "The Stolen Wallet", story_template: wallet_template, category: "News Story")
