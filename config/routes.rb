Rails.application.routes.draw do
  resources :claims
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "companies#index"

	devise_for :users, controllers: {
		registrations: 'users/registrations'
	}

end
