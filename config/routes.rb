Rails.application.routes.draw do
  devise_for :users
  resources :users
  root :to => "visitors#index"
  match '/visitors/index', to: 'visitors#index', via: [:get]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
