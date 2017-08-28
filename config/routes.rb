Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  # patch 'user/update_avatar'


  namespace :dashboard do
    root 'welcome#index'
    patch 'welcome/update_avatar'
  end

  # namespace :user do
  #   root 'welcome#index'
  #   patch 'welcome/update_avatar'
  # end

  resources :user
  resources :home

  devise_for :admins
  devise_for :users

  namespace :admin do
    resources :photos

    resources :users do
      member do
        post :to_admin
        post :to_normal
      end
    end
  end
end
