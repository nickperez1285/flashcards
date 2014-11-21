get '/' do
  # render root page
  erb :index
end

get '/sign_in' do
  # renders login page
  erb :"/users/sign_in"
end

post '/new_session' do
  # logs user in, sets session user id and redirect new game page

  if user = User.find_by(email: params[:email])
    user.authenticate(params[:password])
    session["user_id"] = user.id
    redirect '/games/new'
  else
    @error = "Incorrect login information, please try again."
    erb :"/users/sign_in"
  end
end

get '/sign_up' do
  # registers a new user
  erb :"/users/sign_up"
end

post '/new_user' do
  # creates new users
  if user = User.new(params[:user])
    user.save
    session["user_id"] = user.id
    redirect '/games/new'
  else
    @error = "Invalid email/password"
    erb :'/users/sign_up'
  end
end

delete '/users/:user_id/delete_session' do
  # logs user out
  session["user_id"] = nil
  redirect '/'
end

