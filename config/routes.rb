# frozen_string_literal: true

Rails.application.routes.draw do
  resources :alugueis, only: %i[index new create]
  resources :pontos, only: %i[index]
  resources :bikes, only: %i[index show]
  root 'bikes#index'
end
