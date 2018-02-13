# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

wallet_template = "A #adjective_1 man stole a #number_less_than_a_hundred-year-old woman’s wallet at a Dunkin’ Donuts in West Brighton. He used her credit cards to buy nearly $400 worth of #plural_noun_1 and #plural_noun_2. The suspect grabbed the wallet when the victim placed it on the #adjective_2 counter of the Forest Avenue Dunkin Donuts at 10 p.m. The next day, he made the rounds of #place_1 and #place_2 where he used her credit cards to buy #noun_3 and #noun_4, according to #persons_name_1. He is believed to be in his 20s."

granny_opens_fire = "An #number_less_than_a_hundred year-old #adjective_1 woman got so fed up with her #adjective_2 neighbors, she opened fire on them, #plural_noun_1 say. The California woman has been arrested after shooting at a family of five, three of them #plural_noun_2, according to the #possessive_noun_1 Office.

When police arrived, a neighbor identified as #persons_name_1, spoke to authorities and said that she was outside her home on the front yard with her husband and three kids, when her elderly neighbors started to become upset at their kids.

Authorities said 84-year-old Betty Frances Sanders and her husband then approached the family at their front yard fence and complained about the children riding motorcycles and being noisy. Moments later an argument broke out and Sanders fired one round from a handgun toward Rollins and her family, who were approximately 20 feet away."


template2 = Template.create(title: "Granny Opens Fire", story_template: granny_opens_fire, category: "Something Else")

template1 = Template.create(title: "The Stolen Wallet", story_template: wallet_template, category: "News Story")
