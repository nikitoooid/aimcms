Rails.application.routes.draw do
 
  devise_for :users, controllers: { registrations: 'registrations' }
  
  root 'main#index'
  get '/profile', to: 'users#profile'
  get '/file/:id', to: 'documents#show'
  get '/admin/files/list', to: 'admin/documents#list'

  resources :users, only: [:show]
  
  namespace :admin do
    root 'main#index'
    resources :documents, path: 'files'
    resources :users, only: [:index, :edit, :update, :destroy]
    resources :pages
    resources :blocks
    resources :settings, only: [:index, :update]
    
  end

  get '/:slug', to: 'main#show'

end
