Rails.application.routes.draw do
  root to: 'lists#index'

    resources :lists do
      resources :items
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
