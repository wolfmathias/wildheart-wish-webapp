Rails.application.routes.draw do
  
  resources :keepers, except: [:index, :show]
  
  resources :keepers, only: [:show] do
    resources :animals 
  end
  
  resources :donors, except: [:index, :show]
  
  resources :donors, only: [:show] do
    resources :donations, only: [:index, :show] 
    resources :animals, only: [:index, :show]
  end

  # need routes for users

  get '/login', to: 'sessions#new', as: 'new_session'
  post '/sessions', to: 'sessions#create'
  # post '/delete', to: 'sessions#destroy', as: '/'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
