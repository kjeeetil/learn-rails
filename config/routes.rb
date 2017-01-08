Rails.application.routes.draw do
  get 'users/new'

	resources :contacts, only: [:new, :create]
	resources :games
	root to: 'visitors#new'
end