# Show action
get '/decks/:id/cards/:card_id' do
  @card = Card.find_by(id: params[:card_id])
  erb :'cards/show'
end

# Could add index action for all cards of a particular deck
