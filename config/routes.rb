Films::Application.routes.draw do
  resources :people

  resources :kinds

  resources :movies

  devise_for :users
 
  root 'movies#index'
end
