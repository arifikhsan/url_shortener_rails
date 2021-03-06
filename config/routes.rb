Rails.application.routes.draw do
  namespace :api do
    resources :links, except: [:new, :edit]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :links
  root to: 'home#index'
  get '/:slug', to: 'home#short', as: :short
end
