class Helpers
  def self.current_user(session)
    User.find(session[:user_id])
  end
  
  def self.is_logged_in?(session)
<<<<<<< HEAD
    session[:user_id] != nil
=======
    current_user(session) != nil
>>>>>>> 1b2b19622b6a75714d4c19fc5caf8fbedeee33e9
  end
end