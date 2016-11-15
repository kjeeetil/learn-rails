Rails.application.routes.draw do
	resources :contacts, only: [:new, :create]
	resources :games, only: [:new, :create]
	root to: 'visitors#new'
end