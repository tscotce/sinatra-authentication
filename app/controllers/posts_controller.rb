class PostsController < ApplicationController

  get '/posts' do
    "A list of publicly available posts"
  end

  get '/posts/new' do
    #checking if user is logged in
    if !logged_in?
      redirect to '/login' #redirecting if they aren't
    else "A new post form" #rendering form if they are
    end
  end

  get 'posts/:id/edit' do
    #checking if user is logged in
    if !logged_in?
      redirect to '/login' #redirecting if they aren't
    else "An edit form" #rendering form if they are
    end
  end

end
