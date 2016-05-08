10.times do
  User.create(username: Faker::Internet.user_name, password: "password")
end

10.times do
  Deck.create(name: Faker::Hacker.noun, image: Faker::Avatar.image)
end

100.times do
  question = Faker::Lorem.sentence + " true / false ?"
  answer = rand(2) == 1 ? "true" : "false"
  Card.create(question: question, answer: answer, image: Faker::Avatar.image, deck_id: rand(1..10))
end

100.times do
  Game.create(user_id: rand(1..10), deck_id: rand(1..10))
end
