Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: %i[new create show]
  resources :events, only: %i[new create show index]
  root 'users#new'
  get 'rails/info/routes' => 'routes'
end
