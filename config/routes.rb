Rails.application.routes.draw do
  root to: 'welcome#index'

  get 'welcome/index'
  resources :survivors

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
