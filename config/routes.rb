Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    # Add dashboard for your models here
    resources :users
    resources :insurances

    root 'users#index'
  end

  resources :users
  root 'users#index'
end
