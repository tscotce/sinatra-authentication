class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret"
  end

  helpers do

    def logged_in?
      !!session[:email]
    end

    def login(email, password)
      #check if user with this email actually exits
      raise params.inspect
      user = User.find_by(email: params[:email])
      if user && user.authenticate(password)
        #if so, set the session
        session[:email] = user.email
      #otherwise, redirect
      else redirect to '/login'
      end
    end

    def logout!
      session.clear
    end
  end
end
