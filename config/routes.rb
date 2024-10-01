Rails.application.routes.draw do
  devise_for :users
  get 'schedules/index'
  root to: "schedules#index"
  resources :schedules, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: :create 
  end
  resources :users, only: :show
end
