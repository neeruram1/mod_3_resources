Rails.application.routes.draw do
  resources :resource
  root 'welcome#index'
end
