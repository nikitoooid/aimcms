Rails.application.routes.draw do
 
  devise_for :users
  
  root "main#index"

  resources :documents, only: [:index, :show, :new, :create, :update, :destroy]

end
