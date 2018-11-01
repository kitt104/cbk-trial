Rails.application.routes.draw do
  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to
  # Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the
  # :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being
  # the default of "spree".
  mount Spree::Core::Engine, at: '/'
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
