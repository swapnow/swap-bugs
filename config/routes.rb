Rails.application.routes.draw do
  resources :errors, only: [:create, :update, :index]
end
