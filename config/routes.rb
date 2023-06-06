Rails.application.routes.draw do


 namespace :admin do
  resources :members, only: [:index, :show]
  resources :genres, only: [:index]
  get 'homes/top'
end

namespace :public do
  resources :members, only: [:show, :edit]
  resources :homes, only: [:top, :about]
  resources :events, only: [:show, :index, :new, :edit]
end


#会員用
  devise_for :members, skip: [:passwords],controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者用
  devise_for :admins, skip: [:registrations, :passwords] , controllers: {
  sessions: "admin/sessions"
}



end
