Rails.application.routes.draw do
  get '/resources', to: 'resources#index'
  post '/resources', to: 'resources#create'
  root 'welcome#index'
end
