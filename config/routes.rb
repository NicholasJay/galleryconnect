Galleryconnect::Application.routes.draw do
    resources :users do 
    resources :cards
    resources :webcards, only: [:index, :show]
  end

  resources :webcards
  get '/webcards', to: 'webcards#confirm_card'

  get '/session', to: 'session#new'
  post '/session', to: 'session#create'
  delete '/session', to: 'session#destroy'

  root 'welcome#index'
end
