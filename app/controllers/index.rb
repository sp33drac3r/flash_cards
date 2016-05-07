get '/' do
  logged_in?
  redirect '/decks'
end

get '/login' do
  redirect '/' if session[:id]
  @error = params[:error]
  erb :login
end

post '/login' do
  if session[:id]
    redirect '/'
  else
    new_user = User.find_by(username: params[:username])
    if new_user && new_user.authenticate(params[:password])
      session[:id] = new_user.id
      redirect '/'
    else
      # FIX THIS ERROR MESSAGE
      redirect '/login?error=Wrong%20combination%20of%20user%20and%20password'
    end
  end
end

get '/logout' do
  session.clear
  redirect '/'
end



