get '/users/new' do
  erb :"users/new"
end

post '/users' do
  user = User.new(email: params[:email])
  user.password = params[:password]
  if user.save
    session[:id] = user.id
    redirect '/'
  else
    redirect '/users/new'
  end
end
