Rails.application.routes.draw do
  get 'pages/home'

  resources :artists do
    resources :songs, only: [:new, :create, :show, :destroy, :edit]
  end
end
