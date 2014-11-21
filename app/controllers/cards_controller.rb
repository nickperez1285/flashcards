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
  @counter = 1
  erb :"cards/display_card"
end

get '/cards/:id/compare' do
  @counter = 0
  @card = Card.find(params[:id])
  @submitted_answer = (params[:submitted_answer])
  erb :"cards/compare"
  if @card.answer == @submitted_answer
    redirect "/cards/#{@card.id + 1}"
  else
    redirect "/cards/#{@card.id}"
  end
end
