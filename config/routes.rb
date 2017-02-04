Rails.application.routes.draw do
 devise_for :users 
 devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
end
  resources :pages
  get 'persons/profile'
  get 'persons/profile', as: 'user_root'

	root 'static_pages#welcome'
	get 'about', to: 'static_pages#about'
     root 'home#index'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
