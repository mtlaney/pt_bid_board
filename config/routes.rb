Rails.application.routes.draw do
  resources :adhocs do
    resources :bids
  end
  
  root 'adhocs#index'
end
