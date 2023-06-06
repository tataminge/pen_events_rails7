Rails.application.routes.draw do


#会員
  devise_for :members, skip: [:passwords],controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}



# 管理者
  devise_for :admins, skip: [:registrations, :passwords] , controllers: {
  sessions: "admin/sessions"
}



end
