Rails.application.routes.draw do
  get 'sessions/login'
  get 'sessions/logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :user
end
