Rails.application.routes.draw do
  resources :cruds

  resources :doctors do
    collection do
      get 'statistics'  # This will create /doctors/statistics route
      get 'patients'    # This will create /doctors/patients route
    end
  end
  
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"
  
  root to: "main#index"

  # Render dynamic PWA files from app/views/pwa/*
  
  # Defines the root path route ("/")
  # root "posts#index"
end
