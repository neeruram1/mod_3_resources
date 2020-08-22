Rails.application.routes.draw do
  get '/resources', to: 'resources#index'
  post '/resources', to: 'resources#create'
  delete '/resources/:id', to: 'resources#destroy'
  root 'welcome#index'
end
