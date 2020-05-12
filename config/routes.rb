Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get '/task/new', to: 'tasks#new', as: :new_task
post '/tasks', to: 'tasks#create', as: :create_task

get 'tasks/', to: 'tasks#index'
get 'tasks/:id', to: 'tasks#show', as: :show_task

get 'tasks/edit/:id', to: 'tasks#edit'
patch 'tasks/edit/:id', to: 'tasks#update'

delete 'tasks/:id', to: 'tasks#destroy'
  # resources :tasks
end
