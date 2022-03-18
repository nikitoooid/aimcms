Rails.application.routes.draw do
 
  devise_for :users
  
  root 'main#index'

  namespace :admin do
    root 'main#index'
    resources :documents, path: 'files', only: [:index, :show, :new, :create, :update, :destroy]
    # resources :files, controller: 'documents', as: 'files', only: [:index, :show, :new, :create, :update, :destroy]
  end

end
