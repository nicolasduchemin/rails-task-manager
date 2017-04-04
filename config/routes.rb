Rails.application.routes.draw do

  root to: 'tasks#index'

  # Create
  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  post '/tasks', to: 'tasks#create'

  # Update
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch '/tasks/:id', to: 'tasks#update'

  # All tasks
  get '/tasks', to: 'tasks#index'

  # Specific task
  get '/tasks/:id', to: 'tasks#show', as: 'task'

  # Delete
  delete '/tasks/:id', to: 'tasks#destroy'

end
