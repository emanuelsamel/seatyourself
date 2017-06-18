Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'restaurants#index'
resource :sessions, only: %i(new create destroy)
resources :users 
resources :restaurants do
  resources :reservations
end

end
