Rails.application.routes.draw do
  root to: 'pages#home'
  get "pages/websites", to: "pages#websitesall", as: "websitesall"
  get "pages/:name", to: "pages#website", as: "website"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end