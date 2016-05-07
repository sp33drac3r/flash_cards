# Show action
get '/games/:id' do
  @game = Game.find_by(id: params[:id])
  erb :'games/show'
end
