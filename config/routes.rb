Video::Application.routes.draw do
  
  root :to => 'main#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :episodes
  get 'episodes/tags/:tag', to: 'episodes#index', as: :tag
  
end
