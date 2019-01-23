Rails.application.routes.draw do
  devise_for :users
  # get 'home/index'
  namespace :api, default: { format: :json } do
    scope module: :v1 do

    end
  end
  # Ex:- :default =>''
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
