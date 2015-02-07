Galleryconnect::Application.routes.draw do
    resources :users do 
    resources :cards
  end

  get '/session', to: 'session#new'
  post '/session', to: 'session#create'
  delete '/session', to: 'session#destroy'

  root 'welcome#index'
end
