require 'faker'
3.times do
  Deck.create(title: Faker::Commerce.department)
end

5.times do
  Card.create(question: Faker::Lorem.sentence, answer: "answer", deck_id: 1)
end

5.times do
  Card.create(question: Faker::Lorem.sentence, answer: "answer", deck_id: 2)
end

5.times do
  Card.create(question: Faker::Lorem.sentence, answer: "answer", deck_id: 3)
end
