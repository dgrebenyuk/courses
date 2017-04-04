Softgroup::Application.routes.draw do
  resources :books do
    post 'search', on: :collection
  end
  root to:'home#index'
end
