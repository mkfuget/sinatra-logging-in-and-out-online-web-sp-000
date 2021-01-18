require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
<<<<<<< HEAD

    @session = session

=======
    @session = session
>>>>>>> 1b2b19622b6a75714d4c19fc5caf8fbedeee33e9
    erb :index
  end

  post '/login' do
<<<<<<< HEAD
    is_valid_username = false
    User.all.each do |user|
      if user.username == params[:username]
        is_valid_username = true 
      end 
    end
    if is_valid_username
      user = User.find_by({:username => params[:username]})
      session[:user_id] = user.id
      redirect '/account'

    else
      session[:user_id] = nil
      erb :error
    end

=======
    user = User.find_by({:username => params[:username]})
    if(user == nil)
      erb :error
    else 
      session[:user_id] = user.id
    end

    redirect '/account'
>>>>>>> 1b2b19622b6a75714d4c19fc5caf8fbedeee33e9
  end

  get '/account' do
    @session = session

    if (Helpers.is_logged_in?(session))
      erb :account
    else 
<<<<<<< HEAD
      erb :error
=======
      erb :error 
>>>>>>> 1b2b19622b6a75714d4c19fc5caf8fbedeee33e9
    end
  end

  get '/logout' do
    session[:user_id] = nil
    @session = session

    redirect '/'
  end


end

