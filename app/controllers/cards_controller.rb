# Show action
get '/decks/:id/cards/:card_id' do
  @card = Card.find_by(id: params[:card_id])
  erb :'cards/show'
end

# Could add index action for all cards of a particular deck
get '/decks/:id/cards/:card_id/guess' do
  @card = Card.find_by(id: params[:card_id])
  # if @card.check_answer(params[:answer]) && card.guess == 0

  # else
  # end
# add correct answer to the database and increment the number of correct answers

end
