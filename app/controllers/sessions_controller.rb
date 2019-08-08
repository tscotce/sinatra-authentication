class SessionsController < ApplicationController

  get '/login' do
    erb :'sessions/login.html'
  end

  post '/sessions'do
    login(params[:email], params[:password])
    redirect to '/posts'
  end

  get '/logout' do
    logout!
    "You are logged out"
  end

end
