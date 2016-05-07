get '/decks' do
  logged_in?
  @decks = Deck.all
  erb :'decks/index'
end

get '/decks/:id' do
  @deck = Deck.find_by(id: params[:id])
  erb :'decks/show'
end
