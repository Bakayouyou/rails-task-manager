Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "tasks", to: "tasks#index"
  # get "/show", to: "tasks#show"
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update", as: :update_task

  get "tasks/new", to: "tasks#new", as: :new_tasks
  post "tasks", to: "tasks#create", as: :create_task


  get "/tasks/:id", to: "tasks#show" ,as: :task

end
