get '/' do
  redirect '/decks'
end

get '/login' do
  erb :login
end
