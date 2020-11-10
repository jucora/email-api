require 'sidekiq/web'

Rails.application.routes.draw do
  resources :users, only: :create

  mount Sidekiq::Web => '/sidekiq'
end
