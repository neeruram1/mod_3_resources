Rails.application.routes.draw do
  get '/resources', to: 'resources#index'
  post '/resources', to: 'resources#create'
  delete '/resources/:id', to: 'resources#destroy'
  get '/resources/:id/edit', to: 'resources#edit'
  patch '/resources', to: 'resources#update'
  root 'welcome#index'
end
