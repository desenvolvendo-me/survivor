Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :survivors


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
