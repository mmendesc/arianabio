Rails.application.routes.draw do

  resources :teachings
  resources :categories

  get '/topics/:id' => 'teachings#topics', as: :topics
  root to: 'pages#index'
end
