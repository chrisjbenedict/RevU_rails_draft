Rails.application.routes.draw do
  get 'session/new'
  get 'session/cw'
  get 'session/create'
  get 'session/destroy'
  resources :school_categories
  resources :categories
  resources :reviews
  resources :schools, only: [:index, :show, :review]
  get '/schools/:id/review', to: 'schools#review'
  get '/revu', to: 'schools#welcome'
  get '/home', to: 'schools#home'
  resources :students
  get '/search' => 'pages#search', :as => 'search_page'

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
