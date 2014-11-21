get '/games/new' do
  # render the new game/menu page
  if current_user
    @message = "Successfully logged in."
    @decks = Deck.all
    @user = current_user
    erb :"/games/new"
  else
    erb :"/users/sign_in"
  end
end
