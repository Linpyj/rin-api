Rails.application.routes.draw do

  namespace :api do
    post '/sessions/login'
    get '/sessions/logout'
    resource :user
  end
end
