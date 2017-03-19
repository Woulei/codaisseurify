Rails.application.routes.draw do
  root "artists#index"
  get 'pages/home'

  resources :artist do
    resources :songs, only: [:new, :create, :show, :delete]
  end
end
