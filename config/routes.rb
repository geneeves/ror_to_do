ToDo::Application.routes.draw do
 
  resources :tasks
  resources :lists

  root :to => 'lists#index'
end
