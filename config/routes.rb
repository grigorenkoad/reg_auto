Rails.application.routes.draw do
  resources :machines
  resources :cars
  resources :bikes
  resources :trucks
 
  root :to => 'machines#index'
 
end
