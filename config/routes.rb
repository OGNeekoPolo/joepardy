Rails.application.routes.draw do


  get 'sessions/new'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users

  resources :quizzes do
    resources :questions do
      resources :answers
    end
  end
end
