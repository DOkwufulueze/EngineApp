Contacts::Engine.routes.draw do
  resources :details
  root 'details#index'
end
