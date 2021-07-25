Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :showtimes, only: %i[update]
  resources :rating, only: %i[create]

  get 'movies/:id/movie_times', to: 'movie#movie_times'
  get 'movies/movie_details', to: 'movie#movie_details'
end
