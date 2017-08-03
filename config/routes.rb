Rails.application.routes.draw do

  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout',  to: 'sessions#destroy'

  root 'sessions#new'

  resources :users


  resources :quizzes do
    resources :questions do
      resources :answers
    end
  end
end
