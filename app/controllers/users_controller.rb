class UsersController < ApplicationController
  get '/signup' do
    erb :"users/new.html"
  end

  post '/users' do
    @user = User.new
    @user.email = params[:email]
    @user.password = params[:password]
    if @user.save
      redirect to '/login'
    else erb :"users/new.html" #rendering, rather than redirecting, because want to keep @user information during this one request.
    end
  end
end
