Rails.application.routes.draw do
  get 'resource/index'
  get 'resource/show'
  root 'welcome#index'
end
