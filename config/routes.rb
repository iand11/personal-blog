Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "posts#index"

  resources :posts
  resources :sessions, only: [:new, :create, :destroy]

  get 'about', to: 'users#index', as: :about
end
