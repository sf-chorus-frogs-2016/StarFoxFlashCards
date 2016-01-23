require 'faker'

User.create(
  name: "Jim Bob Jones",
  email: 'jimbob@gmail.com'
  )

Deck.create(title: "Frog Facts")

Deck.create(title: "Hipster Facts")

Card.create(
    deck_id: 1,
    question: "An amphibious creature",
    answer: "frog"
    )

Card.create(
    deck_id: 1,
    question: "Makes a 'gribbit' sound",
    answer: "frog"
    )

Card.create(
    deck_id: 1,
    question: "Likes to eat flies",
    answer: "frog"
    )

Card.create(
    deck_id: 1,
    question: "A creature that is kind of like a toad, but smooth",
    answer: "frog"
    )

10.times do |i|
  Card.create(
    deck_id: 2,
    question: Faker::Hipster.sentence,
    answer: Faker::Hipster.word
    )
end
