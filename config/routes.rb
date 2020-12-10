Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :lists
  resources :list_items

    resources :lists do 
      resources :list_items
    end

end
