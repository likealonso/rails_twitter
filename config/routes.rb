Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: 'tweets#index'
    get 'tweets', to: 'tweets#index'
    get 'tweets/new', to: 'tweets#new'
    get 'tweets/:id', to: 'tweets#show', as: :tweet
    
    post 'tweets', to: 'tweets#create'
    get 'tweets/:id/edit', to: 'tweets#edit', as: :edit_tweet
    put 'tweets/:id', to: 'tweets#update'
    patch 'tweets/:id', to: 'tweets#update' 
    delete 'tweets/:id', to: 'tweets#destroy'

end