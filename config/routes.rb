Rails.application.routes.draw do

  resources :unities
  resources :teachings
  resources :categories

  get '/topics/:id' => 'teachings#topics', as: :topics
  get '/about' => "pages#about", as: :about
  get '/curriculum' => "pages#curriculum", as: :curriculum
  get '/methodology' => 'pages#methodology', as: :methodology

  # search routes
  get '/search_by_title' => "teachings#search_by_title", as: :search_by_title
  get '/search_by_category' => "teachings#search_by_category", as: :search_by_category
  root to: 'pages#index'
end
