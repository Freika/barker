Rails.application.routes.draw do
  root: 'auctions#index'

  get 'auctions/refresh', to: 'auctions#refresh', as: :auctions_refresh

  resources :auctions
end
