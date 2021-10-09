Rails.application.routes.draw do
  resources :fogs
  root :to => "fogs#index"
end
