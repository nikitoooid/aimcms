Rails.application.routes.draw do
  root "main#index"

  resources :documents, only: [:index, :show, :new, :create, :update, :destroy]

end
