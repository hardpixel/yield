Rails.application.routes.draw do
  get 'statuses/index'

  get 'statuses/new'

  get 'statuses/edit'

  resources :contacts

  resources :timelogs

  resources :leads

  resources :expenses

  resources :proposals

  resources :spaces

  resources :meetings

  resources :invoices

  resources :clients

  resources :tasks

  resources :projects

  get 'settings', to: 'settings#index'

  get 'dashboard', to: 'dashboard#index'

  devise_for :users, path: 'account', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }, controllers: { registrations: :registrations }

  resources :users, path: '/settings/users'

  authenticated :user do
    root to: 'dashboard#index', as: :authenticated_root
  end

  unauthenticated do
    root to: 'welcome#index', as: :unauthenticated_root
  end

  root to: 'dashboard#index'
end
