Rails.application.routes.draw do
  # get 'profiles/sponsorship'
  devise_for :users
  root to: 'pages#home'
  get 'my_profile', to: 'profiles#show', as: :my_profile
  get 'communauty', to: 'posts#index', as: :communauty
  resources :courses, only: [:index, :show]
  resources :posts, only: :index do
    resources :comments, only: :create
  end
  resources :participations, only: [] do
  # resources :profiles, only: [:show]
    collection do
      get :past_participations
      get :upcoming_participations
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
