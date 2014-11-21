require 'faker'

10.times do
  deck = Deck.create(title: Faker::Commerce.department)
  5.times { deck.cards << Card.create(question: Faker::Lorem.sentence, answer: "answer") }
end

