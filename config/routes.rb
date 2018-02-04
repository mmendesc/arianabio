Rails.application.routes.draw do

  resources :teachings
  resources :categories
  root to: 'pages#index'
end
