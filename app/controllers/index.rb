get '/' do
  logged_in?
  redirect '/decks'
end

post '/login' do
  redirect '/decks'
end
