Rails.application.routes.draw do

  resources :teachings
  resources :categories

  get '/topics/:id' => 'teachings#topics', as: :topics
  get '/strategic' => "pages#strategic", as: :strategic
  get '/curriculum' => "pages#curriculum", as: :curriculum
  root to: 'pages#index'
end
