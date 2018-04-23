Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'jobads#index'

  resources :jobads, only: [ :index, :new, :create, :show, :destroy]
end
