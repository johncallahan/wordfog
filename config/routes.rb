Rails.application.routes.draw do
  devise_for :users
  resources :fogs
  root :to => "fogs#index"
end
