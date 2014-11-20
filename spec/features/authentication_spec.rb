require_relative 'spec_helper'

describe "users_controller" do
  describe "GET /login" do
    it "renders a successful status for login page" do
      # given
      # when
      get '/login'
      # then
      expect(last_response.status).to eq(200)
    end
  end

  describe "POST /new_user" do
    it "successfully creates a new user" do
      # given
      # when
      @user = User.create(name: "Han", password: "boom")
      # then
      user = User.last
      expect(user.id).to eq(@user.id)
    end
  end

  describe "POST /new_session" do
    it "successfully logs a user in" do
      # given
      @user = User.create(name: "Valerie", password: "boom")
      # when
      post '/new_session'
      # then
      expect(session["user_id"]).to eq(@user.id)
    end
  end

  describe "POST /user/:user_id/delete_session" do
    it "successfully logs out a user" do
      # given
      @user = User.create(name: "Han", password: "boom")
      # when
      post '/user/#{@user.id}/delete_session'
      # then
      expect(session["user_id"]).to eq(nil)
    end
  end
end
