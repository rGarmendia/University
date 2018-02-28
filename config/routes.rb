Rails.application.routes.draw do
  root 'welcome#index'

  get 'welcome/index'

  resources :students
  resources :subjects
  resources :classrooms
  resources :teachers
  resources :departments

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
