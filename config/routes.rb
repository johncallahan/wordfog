Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "callbacks" }
  resources :fogs do
    member do
      get "print"
    end
  end
  devise_scope :user do
    get 'logout', to: 'devise/sessions#destroy'
  end
  root :to => "fogs#index"
end
