Rails.application.routes.draw do
  resources :sub_menus
  resources :parent_menus
  resources :public_accounts
  resources :diymenus
  resources :diymeuns
  resources :users

  root to: 'users#index'
  mount WeixinRailsMiddleware::Engine, at: "/"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
