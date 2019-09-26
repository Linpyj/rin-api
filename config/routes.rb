Rails.application.routes.draw do

  get 'tasks/index'
  get 'tasks/show'
  get 'tasks/create'
  get 'tasks/update'
  get 'tasks/destroy'
  namespace :api do
    post '/sessions/login'
    get '/sessions/logout'
    resource :user
  end
end
