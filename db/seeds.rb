User.delete_all
Deck.delete_all
Card.delete_all
Game.delete_all

10.times do
  User.create(username: Faker::Internet.user_name, password: "password")
end

Deck.create(name: "Hacker Nouns", image: Faker::Avatar.image)

10.times do
  question = "A DBC hacker #{Faker::Hacker.verb} a #{Faker::Hacker.adjective} #{Faker::Hacker.noun}. (true/false)"
  answer = rand(2) == 1 ? "true" : "false"
  Card.create(question: question, answer: answer, image: )
end

100.times do
  question = Faker::ChuckNorris.fact + " true / false ?"
  answer = rand(2) == 1 ? "true" : "false"
  Card.create(question: question, answer: answer, image: Faker::Avatar.image, deck_id: rand(1..10))
end

100.times do
  Game.create(user_id: rand(1..10) , deck_id: rand(1..10),  guesses: rand(20..30), first_guess_corrects: rand(10..20))
end
