Rails.application.routes.draw do
  # get 'profiles/sponsorship'
  devise_for :users
  root to: 'pages#home'
  resources :courses, only: [:index, :show]
  resources :posts, only: :index do
    resources :comments, only: :create
  end
  resources :profiles, only: [:show]
  resources :participants, only: [] do
    collection do
      get :past_participations, :upcoming_participations
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
