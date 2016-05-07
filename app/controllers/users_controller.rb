# Index action
get '/users' do
  @users = User.all
  erb :'users/index'
end

# New action
get '/users/new' do
  erb :'users/new'
end

# Create action
post '/users' do
  @user = User.new(params[:user])

  if @user.save
    redirect '/decks'
  else
    redirect '/users/new'
  end
end

# Show action
get '/users/:id' do
  @user = User.find_by(id: params[:id])
  erb :'users/show'
end

# Edit action
get '/users/:id/edit' do
  @user = User.find_by(id: params[:id])
  erb :'users/edit'
end

# Update action
put '/users/:id' do
  @user = User.find_by(id: params[:id])

  @user.assign_attributes(params[:user])

  if @user.save
    redirect "/users/#{@user.id}"
  else
    erb :'users/edit'
  end
end

# Destroy action
delete '/users/:id' do
  @user = User.find_by(id: params[:id])

  @user.destroy
  redirect '/decks'
end
