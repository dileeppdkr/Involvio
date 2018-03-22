Rails.application.routes.draw do
  # devise_for :users
  resources :notes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_for :users,controllers: { sessions: 'users/sessions' }, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  root 'notes#dashboard'
	devise_scope :user do
	  get 'sign_in', to: 'users/sessions#new', as: "Sign_in"
	  get "/sign_up" => "users/registrations#new"
	end

end
