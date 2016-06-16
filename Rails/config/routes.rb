RorClasses::Application.routes.draw do
  resources :groups do
    resources :users, only: [:index, :create, :new]
  end
  root :to => 'home#index'
end
