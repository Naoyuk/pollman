# frozen_string_literal: true

Rails.application.routes.draw do
  get 'polls/index'
  get 'polls/new'
  get 'polls/create'
  get 'polls/show'
  get 'polls/edit'
  get 'polls/update'
  get 'polls/destroy'
  root 'static_pages#home'
  get  '/help', to: 'static_pages#help'
  get  '/signup', to: 'users#new'
end
