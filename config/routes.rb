Rails.application.routes.draw do
  resources :movies
  resources :seances
  resources :cinema_halls

  resources :ticket_desks do
    resources :reservations do
        post '/offline', to: 'reservations#create_offline'
    end
  end
end
