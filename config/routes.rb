Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :jackets

  use_doorkeeper do
    skip_controllers :authorizations, :applications, :authorized_applications
  end
  
end


