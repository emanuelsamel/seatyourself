Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'restaurants#index'
resource :sessions, only: %i(new create destroy)
resources :users
resources :restaurants do
  resources :reservations
end

get 'viewreservation' => 'reservations#view'
get 'user_reservation' => 'users#show'
get 'restaurants/view/index_owner' => 'restaurants#index_owner'
get 'restaurants/view/index_customer' => 'restaurants#index_customer'

end
