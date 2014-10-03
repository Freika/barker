Rails.application.routes.draw do
  get 'auction_items/index'

  get 'auctions/refresh', to: 'auctions#refresh', as: :auctions_refresh

  resources :auctions
end
