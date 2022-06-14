Rails.application.routes.draw do
  get 'welcome/index'
  resources :survivors


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
