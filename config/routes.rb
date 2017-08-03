Rails.application.routes.draw do

  resources :quizzes do
    resources :questions do
      resources :answers
    end
  end
end
