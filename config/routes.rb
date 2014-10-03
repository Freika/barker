Rails.application.routes.draw do
  get 'auction_items/index'

  resources :auctions
end
