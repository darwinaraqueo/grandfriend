Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'application#index'

  api_version(module: 'api/v1', path: { value: 'api/v1' }, defaults: { format: :json }) do
    resources :grand_friends
    resources :users
    resources :visits
  end

  mount Sidekiq::Web, at: 'sidekiq'
end
