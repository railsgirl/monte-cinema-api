Rails.application.routes.draw do
  resources :ticket_desks
  resources :reservations
  resources :movies
  resources :seances
  resources :cinema_halls
end
