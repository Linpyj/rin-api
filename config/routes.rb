Rails.application.routes.draw do

  namespace :api do
    post '/sessions/login'
    get '/sessions/logout'
    resources :users
    resources :tasks
  end
end
