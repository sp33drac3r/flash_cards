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
    if Guess.find_by(game_id: @game.id, user_id: session[:id], card_id: params[:card_id])
      @game.guesses += 1
      @game.save
    else
      Guess.create(game_id: @game.id, user_id: session[:id], card_id: params[:card_id])
      @game.first_guess_corrects += 1
      @game.guesses += 1
      @game.save
    end
    card_id = Guess.where()
    redirect "/decks/#{params[:id]}/cards/card_id"
  else


  end

end
