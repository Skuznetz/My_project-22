Rails.application.routes.draw do
  devise_for :users
  get 'persons/profile'
  get 'persons/profile', as: 'user_root'

	root 'static_pages#welcome'
	get 'about', to: 'static_pages#about'
     root 'home#index'
	resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
