Rails.application.routes.draw do
  root 'artists#index'
  get 'pages/home'

  resources :artists do
    resources :songs
  end
  resources :photos
end
