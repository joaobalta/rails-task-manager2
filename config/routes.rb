Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tasks
  # # Generic syntax:
  # # verb 'path', to: 'controller#action'

  # # INDEX
  # get 'tasks', to: 'tasks#index'

  # # # CREATE
  # get 'tasks/new', to: 'tasks#new', as: 'new_task'
  # post 'tasks', to: 'tasks#create'

  # # SHOW
  # get 'tasks/:id', to: 'tasks#show', as: 'task'
  # # ../tasks/id_numero

  # # # UPDATE
  # get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task' # Ida no Edit
  # patch 'tasks/:id', to: 'tasks#update' # Volta no Update

  # # DESTROY
  # delete 'tasks/:id', to: 'tasks#destroy'

  # root to: 'tasks#index'
end
