Rails.application.routes.draw do
  scope :api do
    resources :users
    # resources :users, except: [:create]
    resources :user_days
    resources :user_plans
    resources :days
    resources :exercises
    resources :plans

    post 'register', to: 'auth#register'
    post 'login', to: 'auth#login'

    post 'oauth/strava', to: 'oauth#strava'
    get 'strava', to: 'strava#index'
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
