Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/new'
  resources :articles do
    resources :comments
  end
  resources :rooms do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :messages
  end
end
