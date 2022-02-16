Rails.application.routes.draw do
  # get 'restaurants/new'
  # get 'restaurants/show'
  # get 'restaurants/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :new, :edit, :show] do
    resources :reviews, only: [:index, :create]
  end
end
