# frozen_string_literal: true

Rails.application.routes.draw do
  resources :alugueis
  resources :pontos
  resources :bikes
  root 'bikes#index'
end
