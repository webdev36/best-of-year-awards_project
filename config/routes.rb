BestOfYearAwards::Application.routes.draw do
  
  resources :submissions
  
  resources :submission_step
  resources :payment_process
  
  get "home/index"
  get "home/submission_landing"
  get "home/search_submissions"
  get 'home/resume_later'

  resources :users

  resources :user_sessions
  
  match 'login' => "user_sessions#new",      :as => :login
  match 'logout' => "user_sessions#destroy", :as => :logout
  

  root :to => 'home#index'

end
