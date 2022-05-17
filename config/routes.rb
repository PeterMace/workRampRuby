Rails.application.routes.draw do
  get 'home/index'
  
  resources :users
  resources :guides
  resources :groups
  resources :group_automations

  get '/groups/:id/edit_users', to: 'groups#edit_users'
  get '/groups/:id/add_automation', to: 'groups#add_automation'
  post '/groups/:id/create_automation', to: 'group_automations#create'
  get '/run_all_group_automations', to: 'application#run_all_group_automations'
  get '/delete_all_guides_users', to: 'application#delete_all_guides_users'

  root 'home#index'
end
