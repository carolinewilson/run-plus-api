Rails.application.routes.draw do
  resources :user_days
  resources :user_plans
  scope :api do
    resources :users, except: [:create]
    resources :days
    resources :exercises
    resources :plans

    post 'register', to: 'auth#register'
    post 'login', to: 'auth#login'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
