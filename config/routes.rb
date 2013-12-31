Films::Application.routes.draw do
  resources :people

  resources :kinds

  resources :movies

  devise_for :users

  get 'kinds/:id/movies'  => 'kinds#movies',  :as => :kind_movies
  get 'people/:id/movies' => 'people#movies', :as => :person_movies
 
  root 'movies#index'
end
