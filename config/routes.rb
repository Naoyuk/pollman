# frozen_string_literal: true

Rails.application.routes.draw do
  resources :votes
  root 'static_pages#home'
  get  '/help', to: 'static_pages#help'
  get  '/signup', to: 'users#new'
end
