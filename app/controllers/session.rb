get '/' do
  erb :index
end

post '/sessions' do
  user = User.find_by(email: params[:email])
  if user && user.password = params[:password]
    session[:id] = user.id
    redirect '/'
  else
    status 400
    @error = "You entered an incorrect username"
  end
end

delete '/sessions/:id' do
  current_user = nil
  session[:id] = nil
  redirect '/'
end
