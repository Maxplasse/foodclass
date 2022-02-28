Rails.application.routes.draw do
  # get 'courses/show'
  # get 'courses/index'
  # get 'comments/create'
  # get 'posts/index'
  # get 'participants/past_participations'
  # get 'participants/upcoming_participations'
  # get 'profiles/show'
  # get 'profiles/sponsorship'
  devise_for :users
  root to: 'pages#home'
  resources :courses, only: [:index, :show] do
    resources :posts, only: :index do
      resources :comments, only: :create
    end
  end
  resources :profiles, only: [:show, :sponsorship] do
    resources :participants, only: [:past_participations, :upcoming_participations]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
