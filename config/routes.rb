Rails.application.routes.draw do
  
  resources :companies do
  	resources :claims, only: [:show, :create, :new]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "companies#index"

	devise_for :users, controllers: {
		registrations: 'users/registrations',
		sessions: 'users/sessions'
	}

end
