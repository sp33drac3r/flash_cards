# Show action
get '/decks/:id/cards' do
  @deck = Deck.find_by(id: params[:id])
  redirect "/decks/#{params[:id]}/cards/#{@deck.cards.first.id}"
end


get '/decks/:id/cards/:card_id' do
  @card = Card.find_by(id: params[:card_id])
  erb :'cards/show'
end

# Could add index action for all cards of a particular deck
get '/decks/:id/cards/:card_id/guess' do
  p params[:answer]
  @card = Card.find_by(id: params[:card_id])
  @game = Game.find_by(deck_id: params[:id])
  if @card.check_answer(params[:answer])
    @game.first_guess_corrects =

  # else
  # end
# add correct answer to the database and increment the number of correct answers

end
