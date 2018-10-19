Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :user
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'shop',     to: 'pages#shop',       as: :shop
  get 'tuition',  to: 'pages#tuition',    as: :tuition
  get 'club',     to: 'pages#club',       as: :club
  get 'members',  to: 'pages#members',    as: :members

  resources :products

end
