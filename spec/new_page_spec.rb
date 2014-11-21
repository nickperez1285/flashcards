require_relative 'spec_helper'

describe 'GET /new_page'do
before(:each) do
  Deck.delete_all
  Card.delete_all
end

  it "should return all deck titles" do
   @deck = Deck.create(title: "title")
   get "/new_page"
 expect(last_response.body).to include("title")
  end
  it "should return  number of cards in each deck" do
    @card = Card.create(question: "question", answer: "answer")
    get "/new_page"
    expect(Card.count).to eq(1)
  end
  it " should include categories for decks"do

end





