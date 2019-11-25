Rails.application.routes.draw do
  
  resources :keepers, except: [:index]
  resources :donors, except: [:index]

  resources :keepers, only: [:show] do
    resources :animals 
  end

  resources :donors, only: [:show] do
    resources :donations, only: [:index, :show] 
    resources :animals, only: [:index, :show]
  end



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
