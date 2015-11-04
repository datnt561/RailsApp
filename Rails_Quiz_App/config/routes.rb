Project002::Application.routes.draw do    
  get "logout"    => "sessions#destroy",  :as => "logout"
  get "login"     => "sessions#new",      :as => "login"
  get "register"  => "users#new",         :as => "register"
  get "home"      => "pages#home",        :as => "home"
  get "contact"   => "pages#contact",     :as => "contact"
  get "profile"   => "users#show",        :as => "profile"

  root :to => "pages#home"
  resources :users
  resources :sessions  
end