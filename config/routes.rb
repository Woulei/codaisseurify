Rails.application.routes.draw do
  get 'pages/home'

  resources :artists do
    resources :songs
  end
  #post '/artists/:id/songs/new' => 'songs#create', as: :create_artist_song
end
