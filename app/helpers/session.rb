helpers do

  def current_user
    (!session["user_id"].nil?) ? (User.find(session["user_id"])) : false
  end

end
