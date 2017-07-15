Rails.application.routes.draw do
  namespace :api do
    resources :errors, only: [:create, :update, :index]
  end
end
