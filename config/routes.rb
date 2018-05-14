Rails.application.routes.draw do
  root 'home#index'
  get '/show', to: 'home#show', as: 'participantsyolo'
  post '/show', to: 'home#show', as: 'participants'
  devise_for :users
  get '/users/:id', to: 'users#show', as: 'user'
end
