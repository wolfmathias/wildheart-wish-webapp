Rails.application.routes.draw do
  resources :keepers
  # resources :donations
  # resources :donors
 

  resources :keepers, only [:show] do
    resources :animals # /keepers/:id/animals/CRUD
  end

  resources :donors, only [:show] do
    resources :donations, only [:index, :show] # /donors/:id/donations and /donors/:id/donations/:donation_id
  end



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
