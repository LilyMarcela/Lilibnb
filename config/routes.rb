Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "places#index"
  resources :places do 
    post "place_users", to: 'place_users#create'
    #post "booking", to: 'booking#create'
  end

end
