ToDo::Application.routes.draw do
 
  resources :tasks, :except => [:show]
  resources :lists
  patch 'tasks/:id', :to => 'tasks#done'

  root :to => 'lists#index'
end
