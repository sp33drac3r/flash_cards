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
post '/decks/:id/cards/:card_id' do
  @card = Card.find_by(id: params[:card_id])
  @game = Game.find_by(deck_id: params[:id], user_id: session[:id])

  if @card.check_answer(params[:answer]) && already_seen
    record_guess({correct: true, first_guess_correct: false})
  elsif @card.check_answer(params[:answer]) && !already_seen
     record_guess({correct: true, first_guess_correct: true})
     card_id = @game.deck.cards.sample.id
     redirect "/decks/#{params[:id]}/cards/#{card_id}?guess=Correct"
  else
    record_guess({correct: false, first_guess_correct: false})
    card_id = @game.deck.cards.sample.id
    redirect "/decks/#{params[:id]}/cards/#{card_id}?guess=Wrong%20Answer"
  end

end

 # card_id = Guess.find_by(game_id: @game.id, user_id: session[:id], correct: false)
 # card_id = Guess.find_by(game_id: @game.id, user_id: session[:id], correct: false)
