# Rails.application.routes.draw do
#
#   namespace :api do
#     post '/sessions/login'
#     get '/sessions/logout'
#     resources :users
#     resources :tasks
#   end
# end
#

Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      post '/sessions/login'
      get '/sessions/logout'
      resources :user
      resources :tasks
      namespace :manager do
        resources :users
      end
    end
  end
end
