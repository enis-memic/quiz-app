Rails.application.routes.draw do
  devise_for :users
  resources :quizzes do
    resources :questions
    resources :quiz_submission, only: [:show, :create], as: 'submissions'
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'quizzes#index'
end
