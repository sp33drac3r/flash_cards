# Index action
get '/users' do
  @users = User.all
  erb :'users/index'

end

# New action
get '/users/new' do
  erb :'users/new'
end

# Show action
get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end

# Edit action
get '/users/:id/edit' do
  @user = User.find(params[:id])
  erb :'users/edit'
end

