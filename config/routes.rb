Rails.application.routes.draw do
  resources :movies
  resources :seances
  resources :cinema_halls

  resources :ticket_desks do
    resources :reservations do

      collection do
        post '/offline', to: 'reservations#create_offline'
        post '/online', to: 'reservations#create_online'
      end

      resources :tickets
    end
  end
end
