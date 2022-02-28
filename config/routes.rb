Rails.application.routes.draw do
  get 'courses/show'
  get 'courses/index'
  get 'comments/create'
  get 'posts/index'
  get 'participants/past_participations'
  get 'participants/upcoming_participations'
  get 'profiles/show'
  get 'profiles/sponsorship'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
