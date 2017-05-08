Rails.application.routes.draw do
  get 'users/index'

	resources :users do
  	resources :pets
	end

  get 'users/new' 

  root 'users#index'
end
