get '/games/new' do
  # render the new game/menu page
  if current_user
    @message = ["Intelligence is a more accurate predictor of future success than socioeconomic background.", "Intelligence isn’t static.", "IQ scores can make you more confident, or less so.", "Not all intelligence ages the same.", "You can make yourself smarter but only if you believe you can.","Men and women demonstrate equal intelligence.", "There’s more than one way to be smart.", "You can learn to improve your memory.", "New brain connections are created every time you form a memory.", "A good night's sleep may improve your memory."].sample
    @decks = Deck.all
    @user = current_user
    erb :"/games/new"
  else
    erb :"/users/sign_in"
  end
end
