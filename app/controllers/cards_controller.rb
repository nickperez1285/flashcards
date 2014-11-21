get '/decks/:deck_id/cards' do
  if current_user
    @deck = Deck.find(params[:deck_id])
    @cards = @deck.cards
    @user = current_user
    erb :"/cards/index"
  else
    @error = "You need to sign in there, fella."
    erb :"/users/sign_in"
  end
end

get '/cards/:id' do
  @card = Card.find(params[:id])
  erb :display_card
end