Rails.application.routes.draw do
  resources :mining_types
  get 'welcome/index'#, ro 'welcome/index'
  get '/inicio', to: 'welcome#index'

  resources :coins
  # get '/coins', to: 'coins#index'


  root to: 'welcome#index' 
 
end
