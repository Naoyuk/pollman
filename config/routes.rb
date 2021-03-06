# frozen_string_literal: true

Rails.application.routes.draw do
  get 'static_pages/home'
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
end
