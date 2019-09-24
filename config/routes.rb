Rails.application.routes.draw do

  namespace :api do
    get 'sessions/login'
    get 'sessions/logout'
    resource :user
  end
end
