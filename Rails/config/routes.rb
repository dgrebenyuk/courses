RorClasses::Application.routes.draw do
  resources :groups do
    
  end
  root :to => 'home#index'
end
