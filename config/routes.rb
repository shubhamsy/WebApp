Rails.application.routes.draw do
 
  resources :slot_bookings
  resources :user_roles
  resources :slots
   # devise_for :users, controllers: { sessions: 'users/sessions' }
   devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
   # get '/logout' => 'users/sessions#logout'
   devise_scope :user do
   get "signup", to: "devise/registrations#new"
   get "login", to: "devise/sessions#new"
   get "logout", to: "devise/sessions#destroy"
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
