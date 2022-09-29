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
    resources :styles, only: [:index, :new, :create, :edit, :update, :destroy]
    resources :categories, only: [:index, :new, :create, :edit, :update, :destroy]
    resources :products
    resources :product_categories
    resources :xmls

    get 'services/sync', to: 'services#sync_page'
    post 'services/sync', to: 'services#sync'
    post 'services/join/:id', to: 'xmls#join'
  end

  get '/xml/:slug', to: 'xmls#show'
  get '/products/:slug', to: 'products#show'
  get '/categories/:slug', to: 'products#show_category_items'
  get '/sitemap', to: 'main#sitemap'
  get '/:slug', to: 'main#show'

end
