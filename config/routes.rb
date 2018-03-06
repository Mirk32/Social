Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  mount Ckeditor::Engine => '/ckeditor'
  root to: 'static_pages#home_page'
  resources :users, only: %i[update edit]
  resources :posts

  namespace :admin do
    root to: 'dashboard#index'
    resources :users, only: [:index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
