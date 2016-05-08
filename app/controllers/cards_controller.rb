# Show action
get '/decks/:id/cards' do
  @deck = Deck.find_by(id: params[:id])
  Game.find_or_create_by(user_id: session[:id], deck_id: params[:id])
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
  p @game

  if @card.check_answer(params[:answer]) && already_seen?
    record_guess({correct: true, first_guess_correct: false})
    card_id = available_cards.sample
     if available_cards.empty?
      redirect '/'
     else
      redirect "/decks/#{params[:id]}/cards/#{card_id}?guess=Correct"
     end
  elsif @card.check_answer(params[:answer]) && !already_seen?
     record_guess({correct: true, first_guess_correct: true})
     card_id = available_cards.sample
     if available_cards.empty?
      redirect '/'
     else
      redirect "/decks/#{params[:id]}/cards/#{card_id}?guess=Correct"
     end
  else
    record_guess({correct: false, first_guess_correct: false})
    card_id = available_cards.sample
    if available_cards.empty?
      redirect '/'
     else
      redirect "/decks/#{params[:id]}/cards/#{card_id}?guess=Wrong%20Answer"
    end
  end

end
# available cards are cards that have not been answered correctly


 # card_id = Guess.find_by(game_id: @game.id, user_id: session[:id], correct: false)
 # card_id = Guess.find_by(game_id: @game.id, user_id: session[:id], correct: false)
