Rails.application.routes.draw do

<<<<<<< HEAD
  get 'sessions/new'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users

=======
  resources :quizzes do
    resources :questions do
      resources :answers
    end
  end
>>>>>>> 9cf644edcdfe07aeb4714da9b7bafc2fa2f3b83d
end
