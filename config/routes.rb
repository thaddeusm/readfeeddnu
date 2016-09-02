Rails.application.routes.draw do
  get 'profiles/show'

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  resources :feeds do
      resources :writings
  end
  devise_for :users
  root 'pages#home'
  get ':name', to: 'profiles#show', as: :profile

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
