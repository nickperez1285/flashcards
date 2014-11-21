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

get '/games/:game_id/decks/:deck_id/cards/:card_id/compare' do
  session["counter"] += 1
  card = Card.find(params[:card_id])
  deck = Deck.find(params[:deck_id])
  game = Game.find(params[:game_id])
  submitted_answer = (params[:submitted_answer]).downcase.strip
  if session["counter"] < 3
    if card.answer == submitted_answer # get right answer
    game.score += 1
    game.save
    session["counter"] = 0
    (session["card_order"].empty?) ? (redirect "/games/#{game.id}/over") : (redirect "/games/#{game.id}/decks/#{deck.id}/cards/#{session["card_order"].pop}?message=Correct%21")
    else # get wrong answer
    redirect "/games/#{game.id}/decks/#{deck.id}/cards/#{card.id}?message=Incorrect!%20Try%20again%21"
    end
  else
    session["counter"] = 0
    (session["card_order"].empty?) ? (redirect "/games/#{game.id}/over") : (redirect "/games/#{game.id}/decks/#{deck.id}/cards/#{session["card_order"].pop}")
  end
end

