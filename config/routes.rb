Rails.application.routes.draw do

  resources :teachings
  resources :categories

  get '/topics/:id' => 'teachings#topics', as: :topics
  get '/about' => "pages#about", as: :about
  get '/curriculum' => "pages#curriculum", as: :curriculum
  get '/methodology' => 'pages#methodology', as: :methodology
  root to: 'pages#index'
end
