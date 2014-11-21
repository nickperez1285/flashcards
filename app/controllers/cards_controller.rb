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
