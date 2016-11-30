Rails.application.routes.draw do
	resources :contacts, only: [:new, :create]
	resources :games
	root to: 'visitors#new'
end