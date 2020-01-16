# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :movies, only: :index
      resources :seasons, only: :index
      resources :films, only: :index
      resources :purchases, only: :create
      resource  :library, only: :show
    end
  end
end
