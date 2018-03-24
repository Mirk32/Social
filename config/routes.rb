Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  mount Ckeditor::Engine => '/ckeditor'

  root to: 'posts#news'
  get '/contact', to: 'static_pages#contact'
  get '/my-posts', to: 'posts#my_posts'
  get '/news', to: 'posts#news'
  resources :users, only: %i[update edit]
  resources :posts
  resources :comments


  namespace :admin do
    root to: 'dashboard#index'
    resources :users, only: [:index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
