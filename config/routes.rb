Rails.application.routes.draw do
 
  devise_for :users, controllers: { registrations: 'registrations' }
  
  root 'main#index'
  get '/profile', to: 'users#profile'
  get '/file/:id', to: 'documents#show'

  resources :users, only: [:show]

  namespace :admin do
    root 'main#index'
    resources :documents, path: 'files', only: [:index, :show, :new, :create, :update, :destroy]
    resources :users, only: [:index, :edit, :update, :destroy]
    resources :pages
    resources :blocks
  end

  get '/:slug', to: 'main#show'

end
