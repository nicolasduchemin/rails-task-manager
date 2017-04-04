Rails.application.routes.draw do

  # Create
  get '/tasks/new' => 'tasks#new'
  post '/tasks' => 'tasks#create'

  # Update
  get '/tasks/:id/edit' => 'tasks#edit'
  patch '/tasks/:id' =>'tasks#update'

  # All task
  get '/tasks' => 'tasks#index'

  # Specific task
  get '/tasks/:id' => 'task#show'

  # Delete
  delete '/tasks/:id' => 'task#destroy'

end
