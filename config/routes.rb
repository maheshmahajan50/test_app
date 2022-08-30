Rails.application.routes.draw do
  namespace :admin do
    # Add dashboard for your models here
    resources :users

    root 'users#index'
  end
end
