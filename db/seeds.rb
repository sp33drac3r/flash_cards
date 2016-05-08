10.times do
  User.create(username: Faker::Internet.user_name, password: "password")
end

deck1_name = "Hacker Nouns"
Deck.create(name: deck1_name, image: Faker::Avatar.image)

10.times do
  question = "A DBC hacker #{Faker::Hacker.verb} a #{Faker::Hacker.adjective} #{Faker::Hacker.noun}. (true/false)"
  answer = rand(2) == 1 ? "true" : "false"
  Card.create(question: question, answer: answer, image: Faker::Avatar.image, deck_id: Deck.find_by(name: deck1_name).id)
end

deck2_name = "University BS"
Deck.create(name: deck2_name, image: Faker::Avatar.image)

10.times do
  question = "You should go to #{Faker::University.name}. It's a fantastic university. (true/false)"
  answer = "false"
  Card.create(question: question, answer: answer, image: Faker::Avatar.image, deck_id: Deck.find_by(name: deck2_name).id)
end

# CHUCK NORRIS UNINITIALIZED CONSTANT IS A KNOWN BUG IN FAKER 1.6.3

# deck3_name = "Why does Waldo hide?"
# Deck.create(name: deck3_name, image: Faker::Avatar.image)

# 10.times do
#   question = "#{Faker::ChuckNorris.fact}. (true/false)"
#   answer = "true"
#   Card.create(question: question, answer: answer, image: Faker::Avatar.image, deck_id: Deck.find_by(name: deck3_name).id)
# end










