Rails.application.routes.draw do
  devise_for :users
  resources :fogs
  devise_scope :user do
    get 'logout', to: 'devise/sessions#destroy'
  end
  root :to => "fogs#index"
end
