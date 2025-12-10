# config/routes.rb

Rails.application.routes.draw do
  # API namespace
  namespace :api do
    # Books routes with nested chapters
    resources :books do
      resources :chapters
    end
  end

  # Health check endpoint
  # Returns 200 if the app boots with no exceptions, otherwise 500
  get "up" => "rails/health#show", as: :rails_health_check

  # Root path (optional)
  # root "posts#index"
end
