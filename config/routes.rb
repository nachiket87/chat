Rails.application.routes.draw do
  resources :rooms do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :messages
  end
end