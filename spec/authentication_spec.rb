require_relative 'spec_helper'

describe "users_controller" do
  User.delete_all
  describe "GET /sign_in" do
    it "renders a successful status for login page" do
      # given
      # when
      get '/sign_in'
      # then
      expect(last_response.status).to eq(200)
    end
  end

  describe "POST /new_user" do
    it "successfully creates a new user" do
      # given
      # when
      post '/new_user', email: "han@han.com", name: "Han", password: "boom"
      # then
      expect { User.count }.to change { User.count }.by(1)
    end
  end

  describe "POST /new_session" do
    it "successfully logs a user in" do
      # given
      @user = User.create(email: "han@han.com", name: "Valerie", password: "boom")
      # when
      post '/new_session', email: "han@han.com", name: "Valerie", password: "boom"
      # then
      expect(session["user_id"]).to eq(@user.id)
    end
  end

  describe "DELETE /user/:user_id/delete_session" do
    it "successfully logs out a user" do
      # given
      @user = User.create(email: "han@han.com", name: "Han", password: "boom")
      # when
      delete "/users/#{@user.id}/delete_session"
      # then
      expect(session["user_id"]).to eq(nil)
    end
  end

  describe "DELETE /user/:user_id/delete_session" do
    it "successfully redirects to homepage after logging out" do
      # given
      @user = User.create(email: "han@han.com", name: "Valerie", password: "boom")
      # when
      post '/new_session', email: "han@han.com", name: "Valerie", password: "boom"
      delete "/user/#{@user.id}/delete_session"
      # then
      expect(current_path).to eq('/')
    end
  end

  describe "POST /new_user" do
    it "successfully encrypts and stores password_hash" do
      # given
      # when
      post "/new_user", email: "han@han.com", name: "Han", password: "boom"
      # then
      User.last.password.should == "boom"
    end
  end

  describe "POST /new_session" do
    it "checks authentication and redirects to correct page when logged in" do
      # given
      @user = User.create(email: "han@han.com", name: "Valerie", password: "boom")
      # when
      post '/new_session', email: "han@han.com", name: "Valerie", password: "boom"
      # then
      expect(page).to have_content 'New Game'
    end
  end

  describe "DELETE /user/:user_id/delete_session" do
    it "checks authentication and redirects to correct page when logged out" do
      # given
      @user = User.create(email: "han@han.com", name: "Valerie", password: "boom")
      post '/new_session', email: "han@han.com", name: "Valerie", password: "boom"
      # when
      delete "/user/#{@user.id}/delete_session"
      # then
      expect(page).to have_content 'Welcome'
    end
  end
end
