Rails.application.routes.draw do
  devise_for :users
  # get 'home/index'
  namespace :api, defaults: { format: :json } do
    scope module: :v1 do
      resources :users, only: [:show, :create, :update, :destroy]
    end
  end
  # Ex:- :default =>''
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
