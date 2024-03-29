Rails.application.routes.draw do
  
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :offers do
   # collection do
    #  get :tag
   # end
    resources :bookings, only: [ :show, :new, :create, :destroy ]
  end
  get 'tags/:tag', to: 'offers#index', as: :tag
end
