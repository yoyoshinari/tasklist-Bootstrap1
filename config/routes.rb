Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/create'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'toppages/index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  root to: 'tasks#index'
  resources :tasks, only: [:index, :show, :new, :create]
  root to: 'toppages#index'
  
  get 'signup', to: 'users#new'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
