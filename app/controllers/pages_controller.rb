get '/new_page' do
  @deck = Deck.create(title: params[:title])
  erb :new_page
end
