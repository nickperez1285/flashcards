get '/decks/:deck_id/cards/:card_id' do
 @deck = Deck.find(params[:deck_id])
 @card1 = @deck.cards[1]  #### must change to random card
 erb :"/cards/display_card"
end

