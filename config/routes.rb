Rails.application.routes.draw do
  
  get 'posts/new', to: 'posts#new'
  root "messages#index"

  resources :messages, only:[:index]
  
end
