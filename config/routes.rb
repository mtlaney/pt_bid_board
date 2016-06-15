Rails.application.routes.draw do
  resources :adhocs
  root 'adhocs#index'
end
