Rails.application.routes.draw do

  resources :doses, only: [:destroy]

  resources :cocktails, only: [:index, :show, :create, :new, :destroy] do
    resources :doses, only: [:new, :create, :edit, :update]
  end
  root 'cocktails#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
