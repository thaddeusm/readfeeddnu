Rails.application.routes.draw do
  
  get 'reviews/show'
  get 'responses/show'

  resources :responses do
    resources :responses
  end
 
  resources :feeds do
    resources :responses
  end
  
  devise_for :users
  
  root 'pages#home'
  get 'profiles/show'
  get ':name', to: 'profiles#show', as: :profile

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end