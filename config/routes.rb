BestOfYearAwards::Application.routes.draw do
  
  get "orders/success"
  get "orders/failure"

  resources :submissions, :only => [:show, :new, :create, :edit, :update]
  
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
  
  get 'signup' => "users#new", :as => :signup
	post 'signup' => "users#create", :as => :signup
  resource :user, :only => [:edit, :update], :path => '/account'
  resources :users, :only => [:new,:create]
  
  get 'login' => "user_sessions#new", :as => :login
	post 'login' => "user_sessions#create", :as => :login
  match 'logout' => "user_sessions#destroy", :as => :logout
  resources :user_sessions, :only => [:new, :create, :destroy]

  root :to => 'home#index'

end
