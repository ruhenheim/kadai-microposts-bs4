Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'signup', to: 'users#new'
  resources :users, only: %i(index show create)
end
