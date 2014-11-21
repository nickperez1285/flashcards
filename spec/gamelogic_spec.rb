require_relative 'spec_helper'

describe "Game Logic" do
  describe "We can see a specific card" do
    it "shows the card title" do
    @card = Card.create(question: "Is this is a test", answer: "yes")
    get "/cards/1"
    expect(last_response.body).to include(@card.question)
    end
  end

  describe "Our card has an entry field"
    it "returns true for the correct answer"
     params[:submitted_answer] = "yes"
    get "cards/1/compare"


    end
  end
end

