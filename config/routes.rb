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
  
  get 'account/submissions/paid' => "home#previous_submissions", :as => :home_previous_submissions
  get 'account/submissions/pending' => "home#current_submissions", :as => :home_current_submissions
  
  get 'vote' => "home#vote", :as => :home_vote
  get 'event' => "home#event", :as => :home_event
  get 'faq' => "home#faq", :as => :home_faq
  
  resource :user, :only => [:edit, :update], :path => '/account'
  resources :users, :only => [:new,:create]

  resources :user_sessions
  
  match 'login' => "user_sessions#new",      :as => :login
  match 'logout' => "user_sessions#destroy", :as => :logout
  

  root :to => 'home#index'

end
