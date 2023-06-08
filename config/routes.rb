Rails.application.routes.draw do

#会員用
  devise_for :members, skip: [:passwords],controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

# 管理者用
  devise_for :admins, skip: [:registrations, :passwords] , controllers: {
    sessions: "admin/sessions"
  }

  root to: "public/homes#top"
  get "homes/about"=>"public/homes#about", as: 'about'

  namespace :public do
    resources :members, only: [:show, :edit]
    resources :post_events, only: [:show, :index, :new, :edit]do
        collection do
          post 'confirm'
          get 'complete'
        end
    end
  end

  namespace :admin do
    root to: "homes#top"
    resources :members, only: [:index, :show]
    resources :genres, only: [:index, :edit, :create, :update]
    resources :places, only: [:edit, :create, :update]
  end


end
