Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # get 'profiles/sponsorship'
  devise_for :users
  root to: 'pages#home'
  get 'my_profile', to: 'profiles#show', as: :my_profile
  get 'community', to: 'posts#index', as: :community
  resources :courses, only: [:index, :show]
  resources :posts, only: [] do
    resources :upvotes, only: :create
    resources :comments, only: [:create, :destroy]
  end
  resources :participations, only: [] do
    collection do
      get :past_participations
      get :upcoming_participations
      get :favorites
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
