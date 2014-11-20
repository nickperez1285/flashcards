get '/cards/:id' do
  @card = Card.find(params[:id])
  erb :display_card
end