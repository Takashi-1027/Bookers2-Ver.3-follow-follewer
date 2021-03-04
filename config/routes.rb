Rails.application.routes.draw do
  devise_for :users
  get 'home/about' => 'homes#about'

  resources :users, only: [:show,:index,:edit,:update]
  resources :books do
    resource :favorites, only: [:create, :destroy]
    # View-bookの中にfavoritesを作るからresouces :booksの中に入れている。
  end

  root to: 'homes#top'

end

  # get 'favorites/create'
  # get 'favorites/destroy'