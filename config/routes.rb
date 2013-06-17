BestOfYearAwards::Application.routes.draw do
  
  get "orders/success"

  get "orders/failure"

  resources :submissions
  
  resources :submission_step
  resources :payment_process
  
  get "home/index"
  get "home/submission_landing"
  get "home/search_submissions"
  post 'home/resume_later'
  get 'home/edit_submission'
  resources :users

  resources :user_sessions
  
  match 'login' => "user_sessions#new",      :as => :login
  match 'logout' => "user_sessions#destroy", :as => :logout
  

  root :to => 'home#index'

end
