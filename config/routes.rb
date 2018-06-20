Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "places#index"
  resources :places, only: [:index, :new, :create, :show, :destroy, :update, :edit]
end
