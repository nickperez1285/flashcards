require_relative 'spec_helper'

describe 'GET /new'do
before(:each) do
  Deck.delete_all
  Card.delete_all
end

  it "should return all deck titles" do
   @deck = Deck.create(title: "title")
   get "/new"
 expect(last_response.body).to include("title")
  end
  it "should return  number of cards in each deck" do
    @card = Card.create(question: "question", answer: "answer")
    get "/new"
    expect(Card.count).to eq(1)
  end
  it " should include categories for decks"do

end




# VALID_ARTICLE_PARAMS = {title: "title", body: "body"}
# VALID_USER_PARAMS = {username: "user" , name: "name", email: "email", bio:"bio" }
# VALID_COMMENT_PARAMS= {body: 'body '}
# describe 'GET /api/v1/articles ' do
# before(:each) do
# Article.delete_all
# end
# it "should return all articles" do
# article = Article.create(VALID_ARTICLE_PARAMS)
# get '/api/v1/articles'
# obj = JSON.parse(last_response.body)
# expect(obj).to be_instance_of(Array)
# obj.should have(1).items
# end
# end
# describe "GET /api/v1/users" do
# before(:each) do
# User.delete_all
# end
# it " should return all users " do
# user = User.create(VALID_USER_PARAMS)
# get "/api/v1/users"
# obj = JSON.parse(last_response.body)
# expect(obj).to be_instance_of(Array)
# obj.should have(1).items
# end
# end
# describe "GET /api/v1/user/:user_id/articles" do
# before(:each) do
# User.delete_all #<-- drops all information
# Article.delete_all
# end
# it "should return all articles by a user" do
# user = User.create(VALID_USER_PARAMS) #<-- makes new user
# article = Article.create(VALID_ARTICLE_PARAMS) #<-- makes new article
# user.articles << article #<--- assigns article to user
# get "/api/v1/user/#{user.id}/articles"
# obj = JSON.parse(last_response.body) #<--creats object of parsed JSON elements
# expect(obj).to be_instance_of(Array) #<-- expects object to be an array
# obj.should have(1).items #<-- expects array to have 1 element
# obj.first["article"]["user_id"] == user.id #<-- expects article to belong to the first /only user
# end
# end


