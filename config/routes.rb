Rails.application.routes.draw do
  devise_for :users
  root to: 'static_pages#home_page'

  namespace :admin do
    root to: "dashboard#index"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
