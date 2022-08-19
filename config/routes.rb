Rails.application.routes.draw do
  resources :movies
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
end
