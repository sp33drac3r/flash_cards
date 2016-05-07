10.times do
  User.create(username: Faker::Internet.user_name, password_digest: Faker::Internet.password)
end

10.times do
  Deck.create(name: , image:)
end
